/*
 * Copyright 2003-2016 JetBrains s.r.o.
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
package jetbrains.mps.reloading;

import jetbrains.mps.util.ClassPathReader;
import jetbrains.mps.util.ClassType;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.util.SystemInfo;
import jetbrains.mps.util.URLUtil;
import jetbrains.mps.vfs.impl.IoFile;
import jetbrains.mps.vfs.path.UniPath;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import sun.misc.Unsafe;
//import sun.misc.Launcher;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public final class CommonPaths {
  private static final Logger LOG = LogManager.getLogger(CommonPaths.class);

  private static final String REQUESTER_STRING = "Common paths";
  private static final ClassPathCachingFacility ourClassPathCachingFacility = ClassPathCachingFacility.getInstance();


  //--------paths-----------

  public static List<String> getMPSPaths(ClassType type) {
    if (type == ClassType.JDK) {
      return getJDKPath();
    } else if (type == ClassType.JDK_TOOLS) {
      return getJDK_ToolsPath();
    }

    final CompositeClassPathItem result = new CompositeClassPathItem();
    for (String path : new ClassPathReader(PathManager.getHomePath(), Collections.singletonList(type)).read()) {
      addIfExists(result, path);
    }
    if (type == ClassType.ANNOTATIONS) {
      addAnnotations(result);
    } else if (type == ClassType.OPENAPI) {
      addOpenAPIJars(result);
    } else if (type == ClassType.CORE) {
      addCoreJars(result);
    } else if (type == ClassType.EDITOR) {
      addEditorJars(result);
    } else if (type == ClassType.IDEA_PLATFORM) {
      addRepackedIdeaJars(result);
    } else if (type == ClassType.IDEA) {
      addIdeaJars(result);
    } else if (type == ClassType.PLATFORM) {
      addPlatformJars(result);
    } else if (type == ClassType.WORKBENCH) {
      addWorkbenchJars(result);
    } else if (type == ClassType.TEST) {
      addTestJars(result);
    }
    return itemToPath(result);
  }

  public static List<String> getJDKPath() {
    List<String> result = itemToPath(getJDKClassPath());
    if (SystemInfo.isJavaVersionAtLeast("1.7")) {
      result.addAll(getJDK_JavaFXPath());
    }
    return result;
  }

  private static List<String> getJDK_jarPath(@NotNull String classFQName) {
    String jarLocation = getJarFileLocation(classFQName);
    if (jarLocation != null) {
      File file = new File(jarLocation);
      if (file.exists()) {
        return Collections.singletonList(file.getAbsolutePath());
      }
    }
    return Collections.emptyList();
  }

  private static List<String> getJDK_ToolsPath() {
    return getJDK_jarPath("com.sun.jdi.Field");
  }

  private static List<String> getJDK_JavaFXPath() {
    return getJDK_jarPath("javafx.animation.Animation");
  }

  private static String getJarFileLocation(@NotNull String classFQName) {
    try {
      Class cls = Class.forName(classFQName);
      String classFileResourceLocation = "/" + classFQName.replaceAll("\\.", "/") + ".class";
      String classFileResourceURL = cls.getResource(classFileResourceLocation).toString();
      Pair<String, String> urls = URLUtil.splitJarUrl(classFileResourceURL);
      if (urls == null) {
        return null;
      }
      return URLDecoder.decode(urls.o1, Charset.defaultCharset().name()).replace('/', File.separatorChar);
    } catch (ClassNotFoundException | UnsupportedEncodingException e) {
      LOG.warn("", e);
      return null;
    }
  }

  public static String getBaseMPSPath() {
    String classesPath = PathManager.getHomePath() + File.separator + "classes";
    if (new File(classesPath).exists()) {
      return classesPath;
    }
    String mpsJarPath = PathManager.getHomePath() + File.separator + "lib" + File.separatorChar + "mps-boot.jar";
    if (new File(mpsJarPath).exists()) {
      return mpsJarPath;
    }
    return null;
  }

  //------classpaths : JDK--------

  private static List<String> getJDKJars() {
    List<String> result = new ArrayList<String>();

    if (SystemInfo.isMac && !SystemInfo.isJavaVersionAtLeast("1.7")) {
      // in apple jdk's (< jdk7) rt.jar classes contains in classes.jar
      result.add("classes.jar");
    } else {
      result.add("rt.jar");
    }

    result.add("jsse.jar");
    result.add("jce.jar");
    result.add("charsets.jar");
    return result;
  }

  /**
   * @deprecated Since MPS 3.3 used only inside this class, so should become private.
   */
  @Deprecated
  public static IClassPathItem getJDKClassPath() {
    CompositeClassPathItem composite = new CompositeClassPathItem();
    for (String s : getJDKJars()) {
      addJarForName(composite, s);
    }
    return composite;
  }

  private static void addJarForName(CompositeClassPathItem composite, String name) {
    RealClassPathItem rtJar = findBootstrapJarByName(name);
    if (rtJar != null) {
      composite.add(rtJar);
    } else {
      LOG.error("Can't find " + name + ". Make sure you are using JDK 5.0");
    }
  }

  @SuppressWarnings({ "restriction", "unchecked" })
  public static URL[] getUrls(ClassLoader classLoader) {
    if (classLoader == null) {
      return new URL[0];
    }

    if (classLoader instanceof URLClassLoader) {
      return ((URLClassLoader) classLoader).getURLs();
    }

    // jdk9
    if (classLoader.getClass().getName().startsWith("jdk.internal.loader.ClassLoaders$")) {
      try {
        Field field = Unsafe.class.getDeclaredField("theUnsafe");
        field.setAccessible(true);
        Unsafe unsafe = (Unsafe) field.get(null);

        // jdk.internal.loader.ClassLoaders.AppClassLoader.ucp
        Field ucpField = classLoader.getClass().getDeclaredField("ucp");
        long ucpFieldOffset = unsafe.objectFieldOffset(ucpField);
        Object ucpObject = unsafe.getObject(classLoader, ucpFieldOffset);

        // jdk.internal.loader.URLClassPath.path
        Field pathField = ucpField.getType().getDeclaredField("path");
        long pathFieldOffset = unsafe.objectFieldOffset(pathField);
        ArrayList<URL> path = (ArrayList<URL>) unsafe.getObject(ucpObject, pathFieldOffset);

        return path.toArray(new URL[path.size()]);
      } catch (Exception e) {
        e.printStackTrace();
        return new URL[0];
      }
    }
    return new URL[0];
  }

  private static URL[] getBootstrapUrls(Object base) {
//    //Module mod = base.getClass().getModule();
//    Class<?> baseClass = base.getClass();
//    try {
//    Object mod = baseClass.getClass().getMethod("getModule").invoke(baseClass);
//    Object desc = mod.getClass().getMethod("getDescriptor").invoke(mod);
//    Set<Object> exports = (Set<Object>) desc.getClass().getMethod("exports").invoke(desc);
//    Stream<String> targetStream = exports.stream().flatMap(export -> {
//      try {
//        Set<String> targets = (Set<String>) export.getClass().getMethod("targets").invoke(export);
//        return targets.stream();
//      } catch (NoSuchMethodException e) {
//        e.printStackTrace();
//      } catch (IllegalAccessException e) {
//        e.printStackTrace();
//      } catch (InvocationTargetException e) {
//        e.printStackTrace();
//      }
//
//      return Stream.empty();
//    });
//
//      List<URL> result = targetStream
//                             .map(t -> {
//                               try {
//                                 return new URL(t);
//                               } catch (MalformedURLException e) {
//                                 e.printStackTrace();
//                                 return null;
//                               }
//                             })
//                             .filter(Objects::nonNull)
//                             .collect(Collectors.toList());
//
//      return result.toArray(new URL[result.size()]);
//
//    } catch (IllegalAccessException e) {
//      e.printStackTrace();
//    } catch (InvocationTargetException e) {
//      e.printStackTrace();
//    } catch (NoSuchMethodException e) {
//      e.printStackTrace();
//    }

//    List<URL> result = new ArrayList<>();
//
//    result.addAll(Arrays.asList(getUrls(base.getClass().getClassLoader())));
//    result.addAll(Arrays.asList(getUrls(ourClassPathCachingFacility.getClass().getClassLoader())));
//    result.addAll(Arrays.asList(getUrls(ClassLoader.getSystemClassLoader())));
//    try {
//      result.addAll(Arrays.asList(getUrls((ClassLoader) ClassLoader.class.getMethod("getPlatformClassLoader").invoke(null))));
//    } catch (IllegalAccessException e) {
//      e.printStackTrace();
//    } catch (InvocationTargetException e) {
//      e.printStackTrace();
//    } catch (NoSuchMethodException e) {
//      e.printStackTrace();
//    }
//
//    return result.toArray(new URL[result.size()]);
    try {
      return new URL[] {
          new URL("file:///c:/Program%20Files/Java/jdk1.8.0_92/jre/lib/rt.jar"),
          new URL("file:///c:/Program%20Files/Java/jdk1.8.0_92/jre/lib/jsse.jar"),
          new URL("file:///c:/Program%20Files/Java/jdk1.8.0_92/jre/lib/jce.jar"),
          new URL("file:///c:/Program%20Files/Java/jdk1.8.0_92/jre/lib/charsets.jar")
      };
    } catch (MalformedURLException e) {
      return new URL[0];
    }
  }

  private static RealClassPathItem findBootstrapJarByName(String name) {
    for (URL url : getBootstrapUrls(name)) {
      try {
        File file = new File(url.toURI());
        if (!file.exists()) {
          continue;
        }

        if (file.getName().equals(name)) {
          String canonicalPath = file.getCanonicalPath();
          return ourClassPathCachingFacility.createFromPath(canonicalPath, REQUESTER_STRING);
        }
      } catch (URISyntaxException | IOException e) {
        LOG.error(null, e);
      }
    }
    return null;
  }

  //------classpaths : MPS--------

  public static IClassPathItem getMPSClassPath() {
    CompositeClassPathItem result = new CompositeClassPathItem();
    addCoreJars(result);
    addEditorJars(result);
    addPlatformJars(result);
    addIdeaJars(result);
    addWorkbenchJars(result);
    addClasses(result);
    return result;
  }

  private static void addAnnotations(CompositeClassPathItem result) {
    addIfExists(result, "lib/annotations.jar");
  }

  private static void addOpenAPIJars(CompositeClassPathItem result) {
    addIfExists(result, "lib/mps-openapi.jar");
  }

  private static void addCoreJars(CompositeClassPathItem result) {
    addIfExists(result, "lib/mps-annotations.jar");
    addIfExists(result, "lib/mps-logging.jar");
    addIfExists(result, "lib/mps-messaging.jar");
    addIfExists(result, "lib/mps-core.jar");
    addIfExists(result, "lib/mps-boot-util.jar");
    addIfExists(result, "lib/mps-closures.jar");
    addIfExists(result, "lib/mps-collections.jar");
    addIfExists(result, "lib/mps-tuples.jar");
    addIfExists(result, "lib/log4j.jar");
    addIfExists(result, "lib/trove4j.jar");
    addIfExists(result, "lib/jdom.jar");
    addIfExists(result, "lib/ecj-4.6.2.jar");
    addIfExists(result, "lib/guava-21.0.jar");
    addIfExists(result, "lib/xstream-1.4.8.jar");
    addIfExists(result, "lib/asm-all.jar");
  }

  private static void addEditorJars(CompositeClassPathItem result) {
    addIfExists(result, "lib/mps-editor.jar");
    addIfExists(result, "lib/mps-editor-api.jar");
    addIfExists(result, "lib/mps-editor-runtime.jar");
  }

  private static void addRepackedIdeaJars(CompositeClassPathItem result) {
    addIfExists(result, "lib/openapi.jar");
    addIfExists(result, "lib/platform.jar");
  }

  private static void addIdeaJars(CompositeClassPathItem result) {
    addRepackedIdeaJars(result);
    addIfExists(result, "lib/netty-all-4.1.13.Final.jar");
    addIfExists(result, "lib/commons-imaging-1.0-RC.jar");
    addIfExists(result, "lib/util.jar");
    addIfExists(result, "lib/extensions.jar");
    addIfExists(result, "lib/picocontainer.jar");
    addIfExists(result, "lib/forms_rt.jar");
  }

  private static void addPlatformJars(CompositeClassPathItem result) {
    addIfExists(result, "lib/mps-platform.jar");
    addIfExists(result, "lib/mps-icons.jar");
  }

  private static void addWorkbenchJars(CompositeClassPathItem result) {
    addIfExists(result, "lib/mps-workbench.jar");
  }

  private static void addTestJars(CompositeClassPathItem result) {
    addIfExists(result, "lib/mps-test.jar");
    addIfExists(result, "lib/mps-environment.jar");
  }

  private static void addClasses(final CompositeClassPathItem result) {
    String homePath = PathManager.getHomePath();
    ClassPathReader classPathReader = new ClassPathReader(PathManager.getHomePath(), Arrays.asList(ClassType.values()));
    classPathReader.read().stream().forEach(param -> {
      File dir = new File(homePath, param);
      if (dir.exists()) {
        result.add(ourClassPathCachingFacility.createFromPath(dir.getAbsolutePath(), REQUESTER_STRING));
      }
    });
  }

  private static void addIfExists(CompositeClassPathItem item, String path) {
    String dependentPath = UniPath.fromString(path).toSystemPath().toString(); // fixme waiting for Path#resolve method to resolve children in fs
    for (String basePath : PathManager.getHomePaths()) {
      UniPath fullPath = UniPath.fromString(basePath + File.separator + dependentPath).toSystemPath();
      if (new IoFile(fullPath).exists()) {
        item.add(ourClassPathCachingFacility.createFromPath(fullPath.toString(), REQUESTER_STRING));
      }
    }
  }

  //--------utils-----------

  private static List<String> itemToPath(IClassPathItem cp) {
    List<String> result = new ArrayList<String>();
    for (IClassPathItem item : cp.flatten()) {
      if (item instanceof FileClassPathItem) {
        result.add(((FileClassPathItem) item).getPath());
      } else if (item instanceof JarFileClassPathItem) {
        result.add(((JarFileClassPathItem) item).getFile().getAbsolutePath());
      } else {
        throw new IllegalArgumentException(item.getClass().getName());
      }
    }

    return result;
  }
}
