help([==[

Description
===========
Apache Ant is a Java library and command-line tool whose mission is to drive processes described in
 build files as targets and extension points dependent upon each other. The main known usage of Ant is the build of
 Java applications.


More information
================
 - Homepage: https://ant.apache.org/
]==])

whatis([==[Description: Apache Ant is a Java library and command-line tool whose mission is to drive processes described in
 build files as targets and extension points dependent upon each other. The main known usage of Ant is the build of
 Java applications.]==])
whatis([==[Homepage: https://ant.apache.org/]==])
whatis([==[URL: https://ant.apache.org/]==])

local root = "/home/software/EasyBuild/software/ant/1.10.7-Java-11"

conflict("ant")

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTANT", root)
setenv("EBVERSIONANT", "1.10.7")
setenv("EBDEVELANT", pathJoin(root, "easybuild/Core-ant-1.10.7-Java-11-easybuild-devel"))

setenv("ANT_HOME", "/home/software/EasyBuild/software/ant/1.10.7-Java-11")
prepend_path("PATH", root)
-- Built with EasyBuild version 4.4.1
