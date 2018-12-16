/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.compiler;

import com.sun.tools.javac.resources.compiler;
import jetbrains.mps.project.MPSExtentions;
import jetbrains.mps.util.AbstractClassLoader;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.NameUtil;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseAnnotationProcessorManager;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseProcessingEnvImpl;
import org.eclipse.jdt.internal.compiler.apt.dispatch.ProcessorInfo;
import org.eclipse.jdt.internal.compiler.batch.CompilationUnit;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.batch.FileSystem.Classpath;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRule;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.jetbrains.annotations.NotNull;

import javax.annotation.processing.Filer;
import javax.annotation.processing.Messager;
import javax.annotation.processing.Processor;
import javax.lang.model.element.AnnotationMirror;
import javax.lang.model.element.AnnotationValue;
import javax.lang.model.element.Element;
import javax.lang.model.element.TypeElement;
import javax.tools.Diagnostic.Kind;
import javax.tools.FileObject;
import javax.tools.JavaFileManager.Location;
import javax.tools.JavaFileObject;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * MPS java compiler class, which relies on the eclipse compiler {@link Compiler} functionality.
 * Works by consequently adding java source files by calling the method {@link #addSource(String, String)}
 * and once the method {@link #compile} after that
 */
public class EclipseJavaCompiler {
  private final INewSourceAcceptor myNewSourcesAcceptor;
  private Map<String, CompilationUnit> myCompilationUnits = new HashMap<>();
  private Map<String, byte[]> myClasses = new HashMap<>();
  private List<MyFileObject> fileObjects = new ArrayList<>();

  public static interface INewSourceAcceptor {
    void newSource(String newSource, String originatingSource);
  }

  public EclipseJavaCompiler(INewSourceAcceptor newSourcesAcceptor) {
    myNewSourcesAcceptor = newSourcesAcceptor;
  }

  @NotNull
  private static Map<String, String> addPresetCompilerOptions(@NotNull JavaCompilerOptions customCompilerOptions) {
    Map<String, String> compilerOptions = new HashMap<>();
    String actualJavaTargetVersion = customCompilerOptions.getTargetJavaVersion().getCompilerVersion();
    compilerOptions.put(CompilerOptions.OPTION_Source, actualJavaTargetVersion);
    compilerOptions.put(CompilerOptions.OPTION_Compliance, actualJavaTargetVersion);
    compilerOptions.put(CompilerOptions.OPTION_TargetPlatform, actualJavaTargetVersion);


    compilerOptions.put(CompilerOptions.OPTION_LocalVariableAttribute, CompilerOptions.GENERATE);
    compilerOptions.put(CompilerOptions.OPTION_LineNumberAttribute, CompilerOptions.GENERATE);
    compilerOptions.put(CompilerOptions.OPTION_SourceFileAttribute, CompilerOptions.GENERATE);

    compilerOptions.put(CompilerOptions.OPTION_Process_Annotations, CompilerOptions.ENABLED);

    return compilerOptions;
  }

  public void addSource(String classFqName, String text) {
    CompilationUnit compilationUnit = new CompilationUnit(text.toCharArray(), NameUtil.pathFromNamespace(classFqName) + MPSExtentions.DOT_JAVAFILE,
        FileUtil.DEFAULT_CHARSET_NAME);
    myCompilationUnits.put(classFqName, compilationUnit);
  }

  public void compile(Collection<String> classPath) {
    compile(classPath, JavaCompilerOptionsComponent.DEFAULT_JAVA_COMPILER_OPTIONS);
  }
  private static List<Classpath> getFullClasspath(Collection<String> additionalCP) {
    List<Classpath> cp = Util.collectPlatformLibraries(Util.getJavaHome());
    for (String path : additionalCP) {
      Classpath c = FileSystem.getClasspath(path, "UTF_8", null);
      if (c == null){
        continue;
      }
      cp.add(c);
    }
    return cp;
  }

  public void compile(Collection<String> classPath, @NotNull JavaCompilerOptions customCompilerOptions) {
    Map<String, String> compilerOptions = addPresetCompilerOptions(customCompilerOptions);

    Processor processor = null;

    final Optional<String> first = classPath.stream().filter(s -> s.endsWith("annotation-processing-1.0.0-SNAPSHOT.jar")).findFirst();
    if (first.isPresent()) {
      try {
        final URLClassLoader classLoader =
            new URLClassLoader(new URL[]{new File(first.get()).toURI().toURL()}, Thread.currentThread().getContextClassLoader());
        Class<Processor> processorClass = (Class<Processor>) classLoader.loadClass("com.baeldung.annotation.processor.BuilderProcessor");
        if (processorClass != null) {
          processor = processorClass.newInstance();
        }
      } catch (MalformedURLException | ClassNotFoundException | InstantiationException | IllegalAccessException e) {
        e.printStackTrace();
      }
    }

    final JDKFileSystem fileSystem = new JDKFileSystem(classPath, new String[0]);
    CompilerOptions options = new CompilerOptions(compilerOptions);
    final RelayingRequestor requestor = new RelayingRequestor();
    Compiler compiler = new Compiler(fileSystem, new ProceedingOnErrorsPolicy(), options, requestor, new DefaultProblemFactory());

    Processor finalProcessor = processor;
    compiler.annotationProcessorManager = new MyBaseAnnotationProcessorManager(compiler, finalProcessor);

    compiler.annotationProcessorManager.configure(null, null);
//    compiler.options.verbose = true;

    try {
      Collection<CompilationUnit> compilationUnits = myCompilationUnits.values();
      compiler.compile(compilationUnits.toArray(new CompilationUnit[0]));
      for (MyFileObject f: fileObjects) {
        if (f.getKind() == JavaFileObject.Kind.CLASS) {
          final CompilationResult compilationResult = new CompilationResult(f.getName().toCharArray(), 0, 0, 0);
          final ClassFile classFile = new MyClassFile(f);
          compilationResult.record(f.getName().toCharArray(), classFile);
          myClasses.put(f.getName(), f.getContent());
          for (CompilationResultListener l : myCompilationResultListeners) {
            l.onCompilationResult(compilationResult);
            l.onClass(classFile);
          }
        }
      }
    } catch (RuntimeException ex) {
      onFatalError(ex);
    }
  }

  /**
   * The only usage is from evaluator module
   * this logic must be realized at the calling site
   */
  @Deprecated
  public ClassLoader getClassLoader(ClassLoader parent) {
    return new MapClassLoader(parent);
  }

  public Map<String, byte[]> getClasses() {
    return Collections.unmodifiableMap(myClasses);
  }

  private class ProcessingEnvImpl extends BaseProcessingEnvImpl {
    ProcessingEnvImpl(Compiler compiler) {
      this._compiler = compiler;
      this._messager = new Messager() {
        public void printMessage(Kind kind, CharSequence msg) {
          this.printMessage(kind, msg, (Element)null, (AnnotationMirror)null, (AnnotationValue)null);
        }

        public void printMessage(Kind kind, CharSequence msg, Element e) {
          this.printMessage(kind, msg, e, (AnnotationMirror)null, (AnnotationValue)null);
        }

        public void printMessage(Kind kind, CharSequence msg, Element e, AnnotationMirror a) {
          this.printMessage(kind, msg, e, a, (AnnotationValue)null);
        }

        @Override
        public void printMessage(Kind kind, CharSequence msg, Element e, AnnotationMirror a, AnnotationValue v) {
          System.err.println(msg);
        }
      };
      this._filer = new MyFiler(this);
    }

    @Override
    public Locale getLocale() {
      return Locale.getDefault();
    }

    private class MyFiler implements Filer {
      private final BaseProcessingEnvImpl myEnv;

      public MyFiler(BaseProcessingEnvImpl env) {
        myEnv = env;
      }

      @Override
      public JavaFileObject createSourceFile(CharSequence name, Element... originatingElements) throws IOException {
        String xxname = name.toString().replace('.', '/') + ".java";
        myNewSourcesAcceptor.newSource(name.toString(), ((TypeElement) originatingElements[0]).getQualifiedName().toString());

        final MyFileObject result = new MyFileObject(xxname, JavaFileObject.Kind.SOURCE, originatingElements) {
          @Override
          protected void onCloseOutput(ByteArrayOutputStream out) {
            super.onCloseOutput(out);
            myEnv.addNewUnit(new CompilationUnit(new String(out.toByteArray(), Charset.defaultCharset()).toCharArray(), xxname, (String) null));
          }
        };
        fileObjects.add(result);
        return result;
      }

      @Override
      public JavaFileObject createClassFile(CharSequence name, Element... originatingElements) throws IOException {
        final MyFileObject result = new MyFileObject(name.toString(), JavaFileObject.Kind.CLASS, originatingElements) {
          @Override
          protected void onCloseOutput(ByteArrayOutputStream out) {
            super.onCloseOutput(out);
            final char[] typeName = getName().toCharArray();
            ReferenceBinding typ = _compiler.lookupEnvironment.getType(CharOperation.splitOn('.', typeName));
            if (typ != null) {
              myEnv.addNewClassFile(typ);
            }
            try {
              final ClassFileReader binaryType = new ClassFileReader(getContent(), typeName);
              if (binaryType != null) {
                char[] name = binaryType.getName();
                ReferenceBinding type = _compiler.lookupEnvironment.getType(CharOperation.splitOn('/', name));
                if (type != null && type.isValidBinding()) {
                  if (type.isBinaryBinding()) {
                    myEnv.addNewClassFile(type);
                  } else {
                    BinaryTypeBinding
                        binaryBinding = new BinaryTypeBinding(type.getPackage(), binaryType, _compiler.lookupEnvironment, true);
                    if (binaryBinding != null) {
                      myEnv.addNewClassFile(binaryBinding);
                    }
                  }
                }
              }

            } catch (ClassFormatException e) {
              e.printStackTrace();
            }
          }
        };
        fileObjects.add(result);
        return result;
      }

      @Override
      public FileObject createResource(Location location, CharSequence pkg, CharSequence relativeName, Element... originatingElements) throws IOException {
        final MyFileObject result = new MyFileObject(relativeName.toString(), JavaFileObject.Kind.OTHER, originatingElements);
        fileObjects.add(result);
        return result;
      }

      @Override
      public FileObject getResource(Location location, CharSequence pkg, CharSequence relativeName) throws IOException {
        throw new IOException();
      }
    }
  }

  private class MapClassLoader extends AbstractClassLoader {
    private MapClassLoader(ClassLoader parent) {
      super(parent);
    }

    @Override
    protected byte[] findClassBytes(String name) {
      return getClasses().get(name);
    }

    @Override
    protected boolean isExcluded(String name) {
      return false;
    }
  }

  private static class ProceedingOnErrorsPolicy implements IErrorHandlingPolicy {
    @Override
    public boolean proceedOnErrors() {
      return true;
    }

    @Override
    public boolean stopOnFirstError() {
      return false;
    }

    @Override
    public boolean ignoreAllErrors() {
      return false;
    }
  }

  public static String getClassName(ClassFile file) {
    StringBuilder sb = new StringBuilder(100);
    for (int i = 0; i < file.getCompoundName().length; i++) {
      sb.append(file.getCompoundName()[i]);
      if (i != file.getCompoundName().length - 1) {
        sb.append('.');
      }
    }

    return sb.toString();
  }

  private class RelayingRequestor implements ICompilerRequestor {
    @Override
    public void acceptResult(CompilationResult result) {
      for (ClassFile file : result.getClassFiles()) {
        onClass(file);
        myClasses.put(getClassName(file), file.getBytes());
      }

      onCompilationResult(result);
    }
  }

  //-----------event handling------------

  private void onCompilationResult(CompilationResult r) {
    for (CompilationResultListener l : myCompilationResultListeners) {
      l.onCompilationResult(r);
    }
  }

  private void onClass(ClassFile f) {
    for (CompilationResultListener l : myCompilationResultListeners) {
      l.onClass(f);
    }
  }

  private void onFatalError(String error) {
    for (CompilationResultListener l : myCompilationResultListeners) {
      l.onFatalError(error);
    }
  }

  private void onFatalError(Exception e) {
    String msg = e.getMessage();
    if (msg == null) {
      msg = Arrays.stream(e.getStackTrace()).map(x -> x.toString()).collect(Collectors.joining("\n"));
    }
    onFatalError(msg);
  }

  private ArrayList<CompilationResultListener> myCompilationResultListeners = new ArrayList<>();

  public void addCompilationResultListener(@NotNull CompilationResultListener l) {
    myCompilationResultListeners.add(l);
  }

  public void removeCompilationResultListener(CompilationResultListener l) {
    myCompilationResultListeners.remove(l);
  }

  private class MyBaseAnnotationProcessorManager extends BaseAnnotationProcessorManager {
    private final Compiler myCompiler;
    private final Processor myFinalProcessor;

    public MyBaseAnnotationProcessorManager(Compiler compiler, Processor finalProcessor) {
      myCompiler = compiler;
      myFinalProcessor = finalProcessor;
    }

    @Override
    public void configure(Object batchCompiler, String[] options) {
      initProcessor();
      this._processingEnv = new ProcessingEnvImpl(myCompiler);
    }

    private Iterator<Processor> processors;

    @Override
    public ProcessorInfo discoverNextProcessor() {
      System.err.println("discoverNextProcessors()");

      if (processors.hasNext()) {
        final Processor p = processors.next();
        p.init(_processingEnv);
        final ProcessorInfo proc = new ProcessorInfo(p);
        System.err.println("proc: " + proc);
        return proc;
      }

      return null;
    }

    private void initProcessor() {
//        ServiceLoader<Processor> processorServiceLoader = ServiceLoader.load(Processor.class);
//        this.processors=processorServiceLoader.iterator();
      if (myFinalProcessor != null) {
        this.processors = Collections.singleton(myFinalProcessor).iterator();
      } else {
        this.processors = Collections.emptyIterator();
      }
    }

    @Override
    public void reportProcessorException(Processor processor, Exception e) {
      onFatalError(e);
    }
  }
}
