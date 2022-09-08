help([==[

Description
===========
AMD fork of libFLAME. libFLAME is a portable library for dense matrix computations,
providing much of the functionality present in LAPACK.


More information
================
 - Homepage: https://developer.amd.com/amd-cpu-libraries/blas-library/#libflame
]==])

whatis([==[Description: AMD fork of libFLAME. libFLAME is a portable library for dense matrix computations,
providing much of the functionality present in LAPACK.]==])
whatis([==[Homepage: https://developer.amd.com/amd-cpu-libraries/blas-library/#libflame]==])
whatis([==[URL: https://developer.amd.com/amd-cpu-libraries/blas-library/#libflame]==])

local root = "/home/software/EasyBuild/software/libFLAME/2.2-GCCcore-9.3.0-amd"

conflict("libFLAME")

if not ( isloaded("BLIS/2.2-amd") ) then
    load("BLIS/2.2-amd")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLIBFLAME", root)
setenv("EBVERSIONLIBFLAME", "2.2")
setenv("EBDEVELLIBFLAME", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-libFLAME-2.2-amd-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
