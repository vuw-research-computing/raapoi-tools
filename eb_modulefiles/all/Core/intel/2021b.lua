help([==[

Description
===========
Compiler toolchain including Intel compilers, Intel MPI and Intel Math Kernel Library (MKL).


More information
================
 - Homepage: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#intel-toolchain
]==])

whatis([==[Description: Compiler toolchain including Intel compilers, Intel MPI and Intel Math Kernel Library (MKL).]==])
whatis([==[Homepage: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#intel-toolchain]==])
whatis([==[URL: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#intel-toolchain]==])

local root = "/home/software/EasyBuild/software/intel/2021b"

conflict("intel")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("binutils/2.37") ) then
    load("binutils/2.37")
end

if not ( isloaded("intel-compilers/2021.4.0") ) then
    load("intel-compilers/2021.4.0")
end

if not ( isloaded("impi/2021.4.0") ) then
    load("impi/2021.4.0")
end

if not ( isloaded("imkl/2021.4.0") ) then
    load("imkl/2021.4.0")
end

if not ( isloaded("imkl-FFTW/2021.4.0") ) then
    load("imkl-FFTW/2021.4.0")
end

setenv("EBROOTINTEL", root)
setenv("EBVERSIONINTEL", "2021b")
setenv("EBDEVELINTEL", pathJoin(root, "easybuild/Core-intel-2021b-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
