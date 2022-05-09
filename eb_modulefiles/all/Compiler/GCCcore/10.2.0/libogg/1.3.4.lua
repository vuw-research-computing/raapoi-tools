help([==[

Description
===========
Ogg is a multimedia container format, and the native file and stream format for the Xiph.org
multimedia codecs.


More information
================
 - Homepage: https://xiph.org/ogg/
]==])

whatis([==[Description: Ogg is a multimedia container format, and the native file and stream format for the Xiph.org
multimedia codecs.]==])
whatis([==[Homepage: https://xiph.org/ogg/]==])
whatis([==[URL: https://xiph.org/ogg/]==])

local root = "/home/software/EasyBuild/software/libogg/1.3.4-GCCcore-10.2.0"

conflict("libogg")

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBOGG", root)
setenv("EBVERSIONLIBOGG", "1.3.4")
setenv("EBDEVELLIBOGG", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-libogg-1.3.4-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
