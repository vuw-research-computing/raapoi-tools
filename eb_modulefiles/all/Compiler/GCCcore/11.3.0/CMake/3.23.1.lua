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

local root = "/home/software/EasyBuild/software/CMake/3.23.1-GCCcore-11.3.0"

conflict("CMake")

if not ( isloaded("ncurses/6.3") ) then
    load("ncurses/6.3")
end

if not ( isloaded("zlib/1.2.12") ) then
    load("zlib/1.2.12")
end

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("cURL/7.83.0") ) then
    load("cURL/7.83.0")
end

if not ( isloaded("libarchive/3.6.1") ) then
    load("libarchive/3.6.1")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCMAKE", root)
setenv("EBVERSIONCMAKE", "3.23.1")
setenv("EBDEVELCMAKE", pathJoin(root, "easybuild/Compiler-GCCcore-11.3.0-CMake-3.23.1-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
