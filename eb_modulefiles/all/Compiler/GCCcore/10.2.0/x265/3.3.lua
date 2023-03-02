help([==[

Description
===========
x265 is a free software library and application for encoding video streams
 into the H.265 AVC compression format, and is released under the terms of
 the GNU GPL.


More information
================
 - Homepage: https://x265.org/
]==])

whatis([==[Description: 
 x265 is a free software library and application for encoding video streams
 into the H.265 AVC compression format, and is released under the terms of
 the GNU GPL.
]==])
whatis([==[Homepage: https://x265.org/]==])
whatis([==[URL: https://x265.org/]==])

local root = "/home/software/EasyBuild/software/x265/3.3-GCCcore-10.2.0"

conflict("x265")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTX265", root)
setenv("EBVERSIONX265", "3.3")
setenv("EBDEVELX265", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-x265-3.3-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
