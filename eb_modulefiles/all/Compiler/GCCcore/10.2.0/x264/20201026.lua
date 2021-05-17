help([==[

Description
===========
x264 is a free software library and application for encoding video streams
 into the H.264/MPEG-4 AVC compression format, and is released under the
 terms of the GNU GPL.


More information
================
 - Homepage: https://www.videolan.org/developers/x264.html
]==])

whatis([==[Description: 
 x264 is a free software library and application for encoding video streams
 into the H.264/MPEG-4 AVC compression format, and is released under the
 terms of the GNU GPL.
]==])
whatis([==[Homepage: https://www.videolan.org/developers/x264.html]==])
whatis([==[URL: https://www.videolan.org/developers/x264.html]==])

local root = "/home/software/EasyBuild/software/x264/20201026-GCCcore-10.2.0"

conflict("x264")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTX264", root)
setenv("EBVERSIONX264", "20201026")
setenv("EBDEVELX264", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-x264-20201026-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
