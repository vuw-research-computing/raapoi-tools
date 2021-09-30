help([==[

Description
===========
CMake, the cross-platform, open-source build system.  CMake is a family of
 tools designed to build, test and package software.


More information
================
 - Homepage: https://www.cmake.org
]==])

whatis([==[Description: 
 CMake, the cross-platform, open-source build system.  CMake is a family of
 tools designed to build, test and package software.
]==])
whatis([==[Homepage: https://www.cmake.org]==])
whatis([==[URL: https://www.cmake.org]==])

local root = "/home/software/EasyBuild/software/CMake/3.11.4-GCCcore-7.3.0"

conflict("CMake")

if not ( isloaded("ncurses/6.1") ) then
    load("ncurses/6.1")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCMAKE", root)
setenv("EBVERSIONCMAKE", "3.11.4")
setenv("EBDEVELCMAKE", pathJoin(root, "easybuild/Compiler-GCCcore-7.3.0-CMake-3.11.4-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
