help([==[

Description
===========
GCC based compiler toolchain __with CUDA support__, and including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GCC based compiler toolchain __with CUDA support__, and including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.]==])
whatis([==[Homepage: (none)]==])
whatis([==[URL: (none)]==])

local root = "/home/software/EasyBuild/software/fosscuda/2019b"

conflict("fosscuda")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("CUDA/10.1.243") ) then
    load("CUDA/10.1.243")
end

if not ( isloaded("OpenMPI/3.1.4") ) then
    load("OpenMPI/3.1.4")
end

if not ( isloaded("OpenBLAS/0.3.7") ) then
    load("OpenBLAS/0.3.7")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2") ) then
    load("ScaLAPACK/2.0.2")
end

setenv("EBROOTFOSSCUDA", root)
setenv("EBVERSIONFOSSCUDA", "2019b")
setenv("EBDEVELFOSSCUDA", pathJoin(root, "easybuild/Core-fosscuda-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
