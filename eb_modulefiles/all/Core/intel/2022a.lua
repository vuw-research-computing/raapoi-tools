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

local root = "/home/software/EasyBuild/software/intel/2022a"

conflict("intel")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("binutils/2.38") ) then
    load("binutils/2.38")
end

if not ( isloaded("intel-compilers/2022.1.0") ) then
    load("intel-compilers/2022.1.0")
end

if not ( isloaded("impi/2021.6.0") ) then
    load("impi/2021.6.0")
end

if not ( isloaded("imkl/2022.1.0") ) then
    load("imkl/2022.1.0")
end

if not ( isloaded("imkl-FFTW/2022.1.0") ) then
    load("imkl-FFTW/2022.1.0")
end

setenv("EBROOTINTEL", root)
setenv("EBVERSIONINTEL", "2022a")
setenv("EBDEVELINTEL", pathJoin(root, "easybuild/Core-intel-2022a-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
