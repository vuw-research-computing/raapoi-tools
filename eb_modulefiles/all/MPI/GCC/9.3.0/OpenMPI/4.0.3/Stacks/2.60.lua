help([==[

Description
===========
Stacks is a software pipeline for building loci from short-read sequences, such as those generated on
 the Illumina platform. Stacks was developed to work with restriction enzyme-based data, such as RAD-seq,
 for the purpose of building genetic maps and conducting population genomics and phylogeography.


More information
================
 - Homepage: https://catchenlab.life.illinois.edu/stacks/
]==])

whatis([==[Description: Stacks is a software pipeline for building loci from short-read sequences, such as those generated on
 the Illumina platform. Stacks was developed to work with restriction enzyme-based data, such as RAD-seq,
 for the purpose of building genetic maps and conducting population genomics and phylogeography.
]==])
whatis([==[Homepage: https://catchenlab.life.illinois.edu/stacks/]==])
whatis([==[URL: https://catchenlab.life.illinois.edu/stacks/]==])

local root = "/home/software/EasyBuild/software/Stacks/2.60-foss-2020a"

conflict("Stacks")

if not ( isloaded("OpenBLAS/0.3.9") ) then
    load("OpenBLAS/0.3.9")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.1.0") ) then
    load("ScaLAPACK/2.1.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSTACKS", root)
setenv("EBVERSIONSTACKS", "2.60")
setenv("EBDEVELSTACKS", pathJoin(root, "easybuild/MPI-GCC-9.3.0-OpenMPI-4.0.3-Stacks-2.60-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
