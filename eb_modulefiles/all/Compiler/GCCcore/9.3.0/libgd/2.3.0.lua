help([==[

Description
===========
GD is an open source code library for the dynamic creation of images by programmers.


More information
================
 - Homepage: https://libgd.github.io/
]==])

whatis([==[Description: GD is an open source code library for the dynamic creation of images by programmers.]==])
whatis([==[Homepage: https://libgd.github.io/]==])
whatis([==[URL: https://libgd.github.io/]==])

local root = "/home/software/EasyBuild/software/libgd/2.3.0-GCCcore-9.3.0"

conflict("libgd")

if not ( isloaded("fontconfig/2.13.92") ) then
    load("fontconfig/2.13.92")
end

if not ( isloaded("libjpeg-turbo/2.0.4") ) then
    load("libjpeg-turbo/2.0.4")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBGD", root)
setenv("EBVERSIONLIBGD", "2.3.0")
setenv("EBDEVELLIBGD", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-libgd-2.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
