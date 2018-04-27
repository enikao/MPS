This fork contains hacks to

* Run MPS with a Java9 runtime (*NOT* a Java9 compiler)
* Enable Java Annotation Processors for the built-in Java compiler

This fork contains a lot of hard-coded paths valid only in my local development environment and will definitely **NOT run out-of-the-box!**

----



JetBrains MPS
=============

[Learn Meta Programming with Us](http://www.jetbrains.com/mps/)

<i>Design your own Domain Specific Language with full development environment. Get code editor with completion, semantics and type checking with one click. Write generators to compile your DSL into multiple target languages, such as Java, C, XML, and many more.</i>

Useful links
------------

- [Home page](http://www.jetbrains.com/mps/)
- [Documentation](http://confluence.jetbrains.net/display/MPSD20173/MPS+User%27s+Guide)
- [JetBrains MPS wiki space](http://confluence.jetbrains.com/display/MPS/Welcome+to+JetBrains+MPS+Space)
- [Issue tracker](http://www.jetbrains.net/tracker/issues/MPS)
- [Forum](https://mps-support.jetbrains.com/hc/en-us/community/topics)


Building MPS from sources
-------------------------

1. Clone MPS
2. Open the project in [IntelliJ IDEA](http://www.jetbrains.com/idea) (either Community or Ultimate Edition)
3. Attach JDK 8 to the project
4. Rebuild the project from the _Build_ menu (will take quite a while the first time)
5. Run the _MPSLauncher_ run configuration in the _Run_ menu
6. Once MPS starts, open the _MPS_ project (point MPS to the root folder of what you've cloned)

Download
--------

If you'd prefer a ready-to-use build, please head over to the [Download](http://www.jetbrains.com/mps/download/) page and grab an installation package of your choice.

License
-------

_MPS is licensed under the Apache 2 open-source license. See the [complete MPS license agreement](http://www.jetbrains.com/mps/download/license.html) for full details._

System requirements
-------------------

To build JetBrains MPS from sources you need JDK 8. Other JDK versions are currently not supported for building MPS from sources.


----------------------
_Develop with pleasure!
JetBrains MPS Team_
