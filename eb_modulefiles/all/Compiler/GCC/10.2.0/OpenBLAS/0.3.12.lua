help([==[

Description
===========
OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version.


More information
================
 - Homepage: https://xianyi.github.com/OpenBLAS/
]==])

whatis([==[Description: OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version.]==])
whatis([==[Homepage: https://xianyi.github.com/OpenBLAS/]==])
whatis([==[URL: https://xianyi.github.com/OpenBLAS/]==])

local root = "/home/software/EasyBuild/software/OpenBLAS/0.3.12-GCC-10.2.0"

conflict("OpenBLAS")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTOPENBLAS", root)
setenv("EBVERSIONOPENBLAS", "0.3.12")
setenv("EBDEVELOPENBLAS", pathJoin(root, "easybuild/Compiler-GCC-10.2.0-OpenBLAS-0.3.12-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
