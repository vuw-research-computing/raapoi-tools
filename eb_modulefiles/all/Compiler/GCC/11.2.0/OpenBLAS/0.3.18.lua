help([==[

Description
===========
OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version.


More information
================
 - Homepage: http://www.openblas.net/
]==])

whatis([==[Description: OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version.]==])
whatis([==[Homepage: http://www.openblas.net/]==])
whatis([==[URL: http://www.openblas.net/]==])

local root = "/home/software/EasyBuild/software/OpenBLAS/0.3.18-GCC-11.2.0"

conflict("OpenBLAS")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTOPENBLAS", root)
setenv("EBVERSIONOPENBLAS", "0.3.18")
setenv("EBDEVELOPENBLAS", pathJoin(root, "easybuild/Compiler-GCC-11.2.0-OpenBLAS-0.3.18-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
