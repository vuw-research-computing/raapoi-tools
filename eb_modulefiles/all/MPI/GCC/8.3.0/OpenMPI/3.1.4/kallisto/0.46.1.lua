help([==[

Description
===========
kallisto is a program for quantifying abundances of transcripts from RNA-Seq data, or more generally
 of target sequences using high-throughput sequencing reads.


More information
================
 - Homepage: https://pachterlab.github.io/kallisto/
]==])

whatis([==[Description: kallisto is a program for quantifying abundances of transcripts from RNA-Seq data, or more generally
 of target sequences using high-throughput sequencing reads.]==])
whatis([==[Homepage: https://pachterlab.github.io/kallisto/]==])
whatis([==[URL: https://pachterlab.github.io/kallisto/]==])

local root = "/home/software/EasyBuild/software/kallisto/0.46.1-foss-2019b"

conflict("kallisto")

if not ( isloaded("OpenBLAS/0.3.7") ) then
    load("OpenBLAS/0.3.7")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2") ) then
    load("ScaLAPACK/2.0.2")
end

if not ( isloaded("HDF5/1.10.5") ) then
    load("HDF5/1.10.5")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTKALLISTO", root)
setenv("EBVERSIONKALLISTO", "0.46.1")
setenv("EBDEVELKALLISTO", pathJoin(root, "easybuild/MPI-GCC-8.3.0-OpenMPI-3.1.4-kallisto-0.46.1-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
