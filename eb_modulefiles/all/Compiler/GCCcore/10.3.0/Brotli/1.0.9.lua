help([==[

Description
===========
Brotli is a generic-purpose lossless compression algorithm that compresses data using a combination
 of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling, with a compression ratio
 comparable to the best currently available general-purpose compression methods. It is similar in speed with deflate
 but offers more dense compression.
The specification of the Brotli Compressed Data Format is defined in RFC 7932.


More information
================
 - Homepage: https://github.com/google/brotli
]==])

whatis([==[Description: Brotli is a generic-purpose lossless compression algorithm that compresses data using a combination
 of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling, with a compression ratio
 comparable to the best currently available general-purpose compression methods. It is similar in speed with deflate
 but offers more dense compression.
The specification of the Brotli Compressed Data Format is defined in RFC 7932.]==])
whatis([==[Homepage: https://github.com/google/brotli]==])
whatis([==[URL: https://github.com/google/brotli]==])

local root = "/home/software/EasyBuild/software/Brotli/1.0.9-GCCcore-10.3.0"

conflict("Brotli")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTBROTLI", root)
setenv("EBVERSIONBROTLI", "1.0.9")
setenv("EBDEVELBROTLI", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-Brotli-1.0.9-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
