/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.classloading;

import jetbrains.mps.compiler.CompilationResultAdapter;
import jetbrains.mps.compiler.EclipseJavaCompiler;
import jetbrains.mps.make.ClassFileWriter;
import jetbrains.mps.project.facets.JavaModuleOperations;
import jetbrains.mps.reloading.CommonPaths;
import jetbrains.mps.util.NameUtil;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOError;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

// FIXME Reuse make package, remove duplication
public class TestClassFileCreator {
  private static final Logger LOG = LogManager.getLogger(TestClassFileCreator.class);
  private final String myClassDir;
  private final String myTestClassName;
  private final String myTestSourceCode;

  public TestClassFileCreator(String testClassFqName, String classDir) {
    this(testClassFqName, classDir, "public class " + testClassFqName + "{}");
  }

  public TestClassFileCreator(String testClassFqName, String classDir, String sourceCode) {
    myClassDir = classDir;
    myTestClassName = testClassFqName;
    myTestSourceCode = sourceCode;
  }

  public void create() {
    EclipseJavaCompiler compiler = new EclipseJavaCompiler((newSource, originatingSource) -> {});
    compiler.addSource(myTestClassName, myTestSourceCode);
    MyCompilationResultListener listener = new MyCompilationResultListener();
    compiler.addCompilationResultListener(listener);
    compiler.compile(CommonPaths.getJDKPath());
    compiler.removeCompilationResultListener(listener);
    Collection<? extends String> classPaths = listener.getClassPaths();
    assert classPaths.size() == 1;
  }

  private class MyCompilationResultListener extends CompilationResultAdapter {
    private Collection<String> myClassPaths = new ArrayList<String>();

    public Collection<? extends String> getClassPaths() {
      return myClassPaths;
    }

    @Override
    public void onCompilationResult(CompilationResult result) {
      if (result.hasErrors()) {
        for (final CategorizedProblem cp : result.getErrors()) {
          String messageString = new String(cp.getOriginatingFileName()) + " : " + cp.getMessage();
          String errMsg = messageString + " (line: " + cp.getSourceLineNumber() + ")";
          LOG.error("Compilation problems : " + errMsg);
        }
      }
    }

    @Override
    public void onClass(ClassFile cf) {
      String fqName = ClassFileWriter.convertCompoundToFqName(cf.getCompoundName());
      String packageName = NameUtil.namespaceFromLongName(fqName);
      File outputDir = new File(myClassDir + File.separator + NameUtil.pathFromNamespace(packageName));
      if (!outputDir.exists() && !outputDir.mkdirs()) {
        throw new RuntimeException("Can't create " + outputDir.getPath() + " directory");
      }
      String className = NameUtil.shortNameFromLongName(fqName);
      File output = new File(outputDir, className + ".class");
      FileOutputStream os = null;
      try {
        os = new FileOutputStream(output);
        os.write(cf.getBytes());
      } catch (IOException e) {
        throw new IOError(e);
      } finally {
        if (os != null) {
          try {
            os.close();
          } catch (IOException ignored) {
          }
        }
      }
      try {
        myClassPaths.add(outputDir.getCanonicalPath());
      } catch (IOException e) {
        throw new IOError(e);
      }
    }
  }
}
