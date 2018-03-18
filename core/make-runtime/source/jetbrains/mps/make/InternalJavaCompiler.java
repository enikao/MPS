/*
 * Copyright 2003-2017 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.make;

import jetbrains.mps.compiler.EclipseJavaCompiler;
import jetbrains.mps.compiler.JavaCompilerOptions;
import jetbrains.mps.make.CompilationErrorsHandler.ClassesErrorsTracker;
import jetbrains.mps.make.ModuleAnalyzer.ModuleAnalyzerResult;
import jetbrains.mps.project.facets.JavaModuleOperations;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.vfs.IFile;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.module.SModule;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;

import static jetbrains.mps.project.SModuleOperations.getJavaFacet;

/**
 * fixme use bundle for this package
 */
class InternalJavaCompiler {
  private final static String MODULE_WITH_REMOVALS_WAS_NOT_CHANGED = "Module With Removals Is Not In The Changed Modules: %s";
  private final static String NO_CHANGES_AFTER_COMPILATION_ERROR = "Compilation Passed But The Changed Modules Are Empty";
  private final static String CALCULATING_DEPS_MSG = "Calculating Classpath";
  private final static String COMPILING_JAVA_MSG = "Compiling Java";
  private final static String PREPARING_TO_COMPILE_MSG = "Preparing";
  private final static String COPYING_RESOURCES_MSG = "Copying Resources";
  private final static String HANDLING_ERRORS_MSG = "Handling Errors";
  private final static String WRITING_CLASSES_MSG = "Writing Classes";
  private final static String ECLIPSE_COMPILER_MSG = "Running ECJ";

  @NotNull private final ModulesContainer myModulesContainer;
  @Nullable private final JavaCompilerOptions myCompilerOptions;

  InternalJavaCompiler(@NotNull ModulesContainer modulesContainer, @Nullable JavaCompilerOptions compilerOptions) {
    myModulesContainer = modulesContainer;
    myCompilerOptions = compilerOptions;
  }

  @NotNull
  public MPSCompilationResult compile(CompositeTracer tracer) {
    if (!myModulesContainer.hasModuleToCompile()) {
      return MPSCompilationResult.ZERO_COMPILATION_RESULT;
    }
    tracer.start("", 5);
    try {
      ModuleAnalyzerResult analysisResult = new ModuleAnalyzer(myModulesContainer).analyze();
      EclipseJavaCompiler compiler;
      tracer.push(PREPARING_TO_COMPILE_MSG);
      try {
        if (!analysisResult.hasJavaToCompile && !analysisResult.hasResourcesToUpdate) {
          return MPSCompilationResult.nothingToDoCompilationResult();
        }
        analysisResult.filesToDelete.forEach(FileUtil::delete); // removing all stale files
        compiler = collectSources();
      } finally {
        tracer.pop(1);
      }

      MPSCompilationResult result;
      if (!analysisResult.hasJavaToCompile) {
        result = MPSCompilationResult.noJavaCompiledCompilationResult();
      } else {
        result = compileJava(compiler, tracer.subTracer(3));
        reportModulesWithRemovalsAreNotChanged(analysisResult.modulesWithRemovals, result.getChangedModules(), tracer);
      }
      copyResources(tracer.subTracer(1));

      return result;
    } finally {
      tracer.done();
    }
  }

  /**
   * @return eclipse java compiler with sources attached
   */
  private EclipseJavaCompiler collectSources() {
    EclipseJavaCompiler compiler = new EclipseJavaCompiler(new File(getJavaFacet(myModulesContainer.getModules().iterator().next()).getClassesGen().toPath().toString()));
    for (SModule module : myModulesContainer.getModules()) {
      if (!myModulesContainer.areClassesUpToDate(module)) {
        for (JavaFile javaFile : myModulesContainer.getSources(module).getFilesToCompile()) {
          compiler.addSource(javaFile.getClassName(), javaFile.getContents());
          myModulesContainer.putClassForModule(javaFile.getClassName(), module);
        }
      }
    }
    return compiler;
  }

  private void copyResources(CompositeTracer tracer) {
    tracer.start(COPYING_RESOURCES_MSG, 1);
    try {
      for (SModule module : myModulesContainer.getModules()) {
        ModuleSources sources = myModulesContainer.getSources(module);
        IFile classesGen = getJavaFacet(module).getClassesGen();
        if (classesGen == null) {
          continue;
        }
        for (ResourceFile toCopy : sources.getResourcesToCopy()) {
          String fqName = toCopy.getPath();

          fqName = fqName.substring(0, fqName.length() - toCopy.getFile().getName().length());
          String path = fqName + toCopy.getFile().getName();

          if (new File(toCopy.getFile().getAbsolutePath()).exists()) {
            FileUtil.copyFile(new File(toCopy.getFile().getAbsolutePath()), new File(classesGen.getDescendant(path).toPath().toAbsolute().toString()));
          }
        }
      }
    } finally {
      tracer.done(1);
    }
  }

  private void reportModulesWithRemovalsAreNotChanged(Set<SModule> modulesWithRemovals, Set<SModule> changedModules, CompositeTracer tracer) {
    for (SModule module : modulesWithRemovals) {
      if (!changedModules.contains(module)) {
        tracer.getSender().warn(String.format(MODULE_WITH_REMOVALS_WAS_NOT_CHANGED, module), module.getModuleReference());
      }
    }
  }

  @NotNull
  private MPSCompilationResult compileJava(EclipseJavaCompiler compiler, CompositeTracer tracer) {
    tracer.start(COMPILING_JAVA_MSG, 10);
    try {
      IClassPathItem classPath = computeDependenciesClassPath(myModulesContainer.getModules(), tracer.subTracer(1));
      final CompilationErrorsHandler errorsHandler = new CompilationErrorsHandler(myModulesContainer, tracer.getSender(), classPath);
      CompilationHandler compilationHandler = new CompilationHandler(classPath, tracer.subTracer(3), errorsHandler);
      final CollectingResultsListener listener = new CollectingResultsListener(errorsHandler);

      compiler.addCompilationResultListener(listener);
      doCompileJava(compiler, classPath, myCompilerOptions, tracer.subTracer(6));
      compiler.removeCompilationResultListener(listener);

      Collection<SModule> changedModules = compilationHandler.process(listener.getResults());

      if (changedModules.isEmpty()){
        tracer.getSender().error(NO_CHANGES_AFTER_COMPILATION_ERROR);
      }
      return new MPSCompilationResult(errorsHandler.getErrorsCount(), 0, false, changedModules); // fixme: no warnings in the result
    } finally {
      tracer.done();
    }
  }

  private void doCompileJava(EclipseJavaCompiler compiler, IClassPathItem classPath, @Nullable JavaCompilerOptions compilerOptions, CompositeTracer tracer) {
    try {
      tracer.start(ECLIPSE_COMPILER_MSG, 1);
      if (compilerOptions == null) {
        compiler.compile(classPath);
      } else {
        compiler.compile(classPath, compilerOptions);
      }
    } finally {
      tracer.done(1);
    }
  }

  // FIXME at least twice we count all the dependencies WHY
  private static IClassPathItem computeDependenciesClassPath(Set<SModule> modules, CompositeTracer tracer) {
    tracer.start(CALCULATING_DEPS_MSG, 1);
    try {
      Set<String> classpath = JavaModuleOperations.collectCompileClasspath(modules, true);
      tracer.getSender().debug("ClassPath: " + classpath);
      return JavaModuleOperations.createClassPathItem(classpath, ModuleMaker.class.getName());
    } finally {
      tracer.done(1);
    }
  }

  /**
   * Memorizes and returns all the results. Also handles fatal errors
   */
  private class CollectingResultsListener extends jetbrains.mps.compiler.CompilationResultAdapter {
    private final CompilationErrorsHandler myErrorsHandler;
    private final List<CompilationResult> myResults = new ArrayList<>();

    CollectingResultsListener(@NotNull CompilationErrorsHandler errorsHandler) {
      myErrorsHandler = errorsHandler;
    }

    @Override
    public void onFatalError(@NotNull String msg) {
      myErrorsHandler.handleFatal(msg);
    }

    @Override
    public void onCompilationResult(CompilationResult r) {
      myResults.add(r);
    }

    public List<CompilationResult> getResults() {
      return Collections.unmodifiableList(myResults);
    }
  }

  /**
   * Process all the compilation results
   */
  private class CompilationHandler {
    private final IClassPathItem myClassPath;
    private final CompositeTracer myTracer;
    private final CompilationErrorsHandler myErrorsHandler;
    private final ClassFileWriter myWriter;

    CompilationHandler(IClassPathItem classPath, CompositeTracer tracer, CompilationErrorsHandler errorsHandler) {
      myClassPath = classPath;
      myTracer = tracer;
      myErrorsHandler = errorsHandler;
      myWriter = new ClassFileWriter(myModulesContainer, tracer, myClassPath);
    }

    /**
     * @return a set of changed modules
     */
    public Set<SModule> process(List<CompilationResult> results) {
      myTracer.start(HANDLING_ERRORS_MSG, 11);
      try {
        ClassesErrorsTracker errorsTracker = new ClassesErrorsTracker();
        for (CompilationResult result : results) {
          CategorizedProblem[] errors = result.getErrors();
          if (errors != null && errors.length > 0) {
            errorsTracker = myErrorsHandler.handle(result);
          }
        }
        myTracer.advance(1);
        myTracer.push(WRITING_CLASSES_MSG);
        Set<SModule> changedModules = myWriter.write(results, errorsTracker);
        myTracer.pop(10);
        return changedModules;
      } finally {
        myTracer.done();
      }
    }
  }
}
