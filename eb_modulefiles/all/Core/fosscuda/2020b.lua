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

local root = "/home/software/EasyBuild/software/fosscuda/2020b"

conflict("fosscuda")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("CUDA/11.1.1") ) then
    load("CUDA/11.1.1")
end

if not ( isloaded("OpenMPI/4.0.5") ) then
    load("OpenMPI/4.0.5")
end

if not ( isloaded("OpenBLAS/0.3.12") ) then
    load("OpenBLAS/0.3.12")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.1.0") ) then
    load("ScaLAPACK/2.1.0")
end

setenv("EBROOTFOSSCUDA", root)
setenv("EBVERSIONFOSSCUDA", "2020b")
setenv("EBDEVELFOSSCUDA", pathJoin(root, "easybuild/Core-fosscuda-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
