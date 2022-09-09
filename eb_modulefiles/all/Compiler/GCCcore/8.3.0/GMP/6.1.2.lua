help([==[

Description
===========
GMP is a free library for arbitrary precision arithmetic, operating on signed
 integers, rational numbers, and floating point numbers.


More information
================
 - Homepage: https://gmplib.org/
]==])

whatis([==[Description: 
 GMP is a free library for arbitrary precision arithmetic, operating on signed
 integers, rational numbers, and floating point numbers.
]==])
whatis([==[Homepage: https://gmplib.org/]==])
whatis([==[URL: https://gmplib.org/]==])

local root = "/home/software/EasyBuild/software/GMP/6.1.2-GCCcore-8.3.0"

conflict("GMP")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGMP", root)
setenv("EBVERSIONGMP", "6.1.2")
setenv("EBDEVELGMP", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-GMP-6.1.2-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
