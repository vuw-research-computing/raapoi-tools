help([==[

Description
===========
RepeatMasker is a program that screens DNA sequences for interspersed repeats
 and low complexity DNA sequences.


More information
================
 - Homepage: https://www.repeatmasker.org/
]==])

whatis([==[Description: RepeatMasker is a program that screens DNA sequences for interspersed repeats
 and low complexity DNA sequences.]==])
whatis([==[Homepage: https://www.repeatmasker.org/]==])
whatis([==[URL: https://www.repeatmasker.org/]==])

local root = "/home/software/EasyBuild/software/RepeatMasker/4.1.2-p1-foss-2020b"

conflict("RepeatMasker")

if not ( isloaded("OpenBLAS/0.3.12") ) then
    load("OpenBLAS/0.3.12")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.1.0") ) then
    load("ScaLAPACK/2.1.0")
end

if not ( isloaded("Python/3.8.6") ) then
    load("Python/3.8.6")
end

if not ( isloaded("Perl/5.32.0") ) then
    load("Perl/5.32.0")
end

if not ( isloaded("TRF/4.09.1") ) then
    load("TRF/4.09.1")
end

if not ( isloaded("h5py/3.1.0") ) then
    load("h5py/3.1.0")
end

if not ( isloaded("HMMER/3.3.2") ) then
    load("HMMER/3.3.2")
end

if not ( isloaded("RMBlast/2.11.0") ) then
    load("RMBlast/2.11.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTREPEATMASKER", root)
setenv("EBVERSIONREPEATMASKER", "4.1.2-p1")
setenv("EBDEVELREPEATMASKER", pathJoin(root, "easybuild/MPI-GCC-10.2.0-OpenMPI-4.0.5-RepeatMasker-4.1.2-p1-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.5.4
