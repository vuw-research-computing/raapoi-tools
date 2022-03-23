help([==[

Description
===========
OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version.


More information
================
 - Homepage: http://xianyi.github.com/OpenBLAS/
]==])

whatis([==[Description: OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version.]==])
whatis([==[Homepage: http://xianyi.github.com/OpenBLAS/]==])
whatis([==[URL: http://xianyi.github.com/OpenBLAS/]==])

local root = "/home/software/EasyBuild/software/OpenBLAS/0.3.1-GCC-7.3.0-2.30"

conflict("OpenBLAS")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTOPENBLAS", root)
setenv("EBVERSIONOPENBLAS", "0.3.1")
setenv("EBDEVELOPENBLAS", pathJoin(root, "easybuild/Compiler-GCC-7.3.0-2.30-OpenBLAS-0.3.1-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
