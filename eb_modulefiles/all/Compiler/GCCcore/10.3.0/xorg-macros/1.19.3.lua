help([==[

Description
===========
X.org macros utilities.


More information
================
 - Homepage: https://cgit.freedesktop.org/xorg/util/macros
]==])

whatis([==[Description: X.org macros utilities.]==])
whatis([==[Homepage: https://cgit.freedesktop.org/xorg/util/macros]==])
whatis([==[URL: https://cgit.freedesktop.org/xorg/util/macros]==])

local root = "/home/software/EasyBuild/software/xorg-macros/1.19.3-GCCcore-10.3.0"

conflict("xorg-macros")

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTXORGMINMACROS", root)
setenv("EBVERSIONXORGMINMACROS", "1.19.3")
setenv("EBDEVELXORGMINMACROS", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-xorg-macros-1.19.3-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
