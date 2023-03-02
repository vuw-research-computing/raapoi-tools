help([==[

Description
===========
zlib is designed to be a free, general-purpose, legally unencumbered -- that is,
 not covered by any patents -- lossless data-compression library for use on virtually any
 computer hardware and operating system.


More information
================
 - Homepage: https://www.zlib.net/
]==])

whatis([==[Description: zlib is designed to be a free, general-purpose, legally unencumbered -- that is,
 not covered by any patents -- lossless data-compression library for use on virtually any
 computer hardware and operating system.]==])
whatis([==[Homepage: https://www.zlib.net/]==])
whatis([==[URL: https://www.zlib.net/]==])

local root = "/home/software/EasyBuild/software/zlib/1.2.12-GCCcore-11.3.0"

conflict("zlib")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTZLIB", root)
setenv("EBVERSIONZLIB", "1.2.12")
setenv("EBDEVELZLIB", pathJoin(root, "easybuild/Compiler-GCCcore-11.3.0-zlib-1.2.12-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
