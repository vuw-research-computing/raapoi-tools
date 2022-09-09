help([==[

Description
===========
Ninja is a small build system with a focus on speed.


More information
================
 - Homepage: https://ninja-build.org/
]==])

whatis([==[Description: Ninja is a small build system with a focus on speed.]==])
whatis([==[Homepage: https://ninja-build.org/]==])
whatis([==[URL: https://ninja-build.org/]==])

local root = "/home/software/EasyBuild/software/Ninja/1.10.0-GCCcore-9.3.0"

conflict("Ninja")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNINJA", root)
setenv("EBVERSIONNINJA", "1.10.0")
setenv("EBDEVELNINJA", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-Ninja-1.10.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
