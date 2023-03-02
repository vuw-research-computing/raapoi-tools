help([==[

Description
===========
Bazel is a build tool that builds code quickly and reliably.
It is used to build the majority of Google's software.


More information
================
 - Homepage: https://bazel.io/
]==])

whatis([==[Description: Bazel is a build tool that builds code quickly and reliably.
It is used to build the majority of Google's software.]==])
whatis([==[Homepage: https://bazel.io/]==])
whatis([==[URL: https://bazel.io/]==])

local root = "/home/software/EasyBuild/software/Bazel/3.7.2-GCCcore-10.3.0"

conflict("Bazel")

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBAZEL", root)
setenv("EBVERSIONBAZEL", "3.7.2")
setenv("EBDEVELBAZEL", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-Bazel-3.7.2-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
