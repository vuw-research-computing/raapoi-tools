help([==[

Description
===========
AMD's fork of BLIS. BLIS is a portable software framework for instantiating high-performance
BLAS-like dense linear algebra libraries.


More information
================
 - Homepage: https://developer.amd.com/amd-cpu-libraries/blas-library/
]==])

whatis([==[Description: AMD's fork of BLIS. BLIS is a portable software framework for instantiating high-performance
BLAS-like dense linear algebra libraries.]==])
whatis([==[Homepage: https://developer.amd.com/amd-cpu-libraries/blas-library/]==])
whatis([==[URL: https://developer.amd.com/amd-cpu-libraries/blas-library/]==])

local root = "/home/software/EasyBuild/software/BLIS/2.2-GCCcore-9.3.0-amd"

conflict("BLIS")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTBLIS", root)
setenv("EBVERSIONBLIS", "2.2")
setenv("EBDEVELBLIS", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-BLIS-2.2-amd-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/blis"))
-- Built with EasyBuild version 4.3.4
