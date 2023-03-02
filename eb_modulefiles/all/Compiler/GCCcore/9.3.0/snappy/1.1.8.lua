help([==[

Description
===========
Snappy is a compression/decompression library. It does not aim
for maximum compression, or compatibility with any other compression library;
instead, it aims for very high speeds and reasonable compression.


More information
================
 - Homepage: https://github.com/google/snappy
]==])

whatis([==[Description: Snappy is a compression/decompression library. It does not aim
for maximum compression, or compatibility with any other compression library;
instead, it aims for very high speeds and reasonable compression.]==])
whatis([==[Homepage: https://github.com/google/snappy]==])
whatis([==[URL: https://github.com/google/snappy]==])

local root = "/home/software/EasyBuild/software/snappy/1.1.8-GCCcore-9.3.0"

conflict("snappy")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSNAPPY", root)
setenv("EBVERSIONSNAPPY", "1.1.8")
setenv("EBDEVELSNAPPY", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-snappy-1.1.8-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
