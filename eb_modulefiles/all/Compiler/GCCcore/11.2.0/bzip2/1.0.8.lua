help([==[

Description
===========
bzip2 is a freely available, patent free, high-quality data compressor. It
 typically compresses files to within 10% to 15% of the best available
 techniques (the PPM family of statistical compressors), whilst being around
 twice as fast at compression and six times faster at decompression.


More information
================
 - Homepage: https://sourceware.org/bzip2
]==])

whatis([==[Description: 
 bzip2 is a freely available, patent free, high-quality data compressor. It
 typically compresses files to within 10% to 15% of the best available
 techniques (the PPM family of statistical compressors), whilst being around
 twice as fast at compression and six times faster at decompression.
]==])
whatis([==[Homepage: https://sourceware.org/bzip2]==])
whatis([==[URL: https://sourceware.org/bzip2]==])

local root = "/home/software/EasyBuild/software/bzip2/1.0.8-GCCcore-11.2.0"

conflict("bzip2")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTBZIP2", root)
setenv("EBVERSIONBZIP2", "1.0.8")
setenv("EBDEVELBZIP2", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-bzip2-1.0.8-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
