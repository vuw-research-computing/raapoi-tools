help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain, including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.


More information
================
 - Homepage: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#foss-toolchain
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain, including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.]==])
whatis([==[Homepage: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#foss-toolchain]==])
whatis([==[URL: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#foss-toolchain]==])

local root = "/home/software/EasyBuild/software/foss/2018b"

conflict("foss")

if not ( isloaded("GCC/7.3.0-2.30") ) then
    load("GCC/7.3.0-2.30")
end

if not ( isloaded("OpenMPI/3.1.1") ) then
    load("OpenMPI/3.1.1")
end

if not ( isloaded("OpenBLAS/0.3.1") ) then
    load("OpenBLAS/0.3.1")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2-OpenBLAS-0.3.1") ) then
    load("ScaLAPACK/2.0.2-OpenBLAS-0.3.1")
end

setenv("EBROOTFOSS", root)
setenv("EBVERSIONFOSS", "2018b")
setenv("EBDEVELFOSS", pathJoin(root, "easybuild/Core-foss-2018b-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
