help([==[

Description
===========
The X Window System (X11) is a windowing system for bitmap displays


More information
================
 - Homepage: https://www.x.org
]==])

whatis([==[Description: The X Window System (X11) is a windowing system for bitmap displays]==])
whatis([==[Homepage: https://www.x.org]==])
whatis([==[URL: https://www.x.org]==])

local root = "/home/software/EasyBuild/software/X11/20201008-GCCcore-10.2.0"

conflict("X11")

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("fontconfig/2.13.92") ) then
    load("fontconfig/2.13.92")
end

if not ( isloaded("freetype/2.10.3") ) then
    load("freetype/2.10.3")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("xorg-macros/1.19.2") ) then
    load("xorg-macros/1.19.2")
end

if not ( isloaded("libpciaccess/0.16") ) then
    load("libpciaccess/0.16")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTX11", root)
setenv("EBVERSIONX11", "20201008")
setenv("EBDEVELX11", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-X11-20201008-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
