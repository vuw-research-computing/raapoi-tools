help([==[

Description
===========
Generic PCI access library.


More information
================
 - Homepage: http://cgit.freedesktop.org/xorg/lib/libpciaccess/
]==])

whatis([==[Description: Generic PCI access library.]==])
whatis([==[Homepage: http://cgit.freedesktop.org/xorg/lib/libpciaccess/]==])
whatis([==[URL: http://cgit.freedesktop.org/xorg/lib/libpciaccess/]==])

local root = "/home/software/EasyBuild/software/libpciaccess/0.14-GCCcore-8.3.0"

conflict("libpciaccess")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBPCIACCESS", root)
setenv("EBVERSIONLIBPCIACCESS", "0.14")
setenv("EBDEVELLIBPCIACCESS", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-libpciaccess-0.14-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
