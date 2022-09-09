help([==[

Description
===========
RASPA is a software package for simulating adsorption and diffusion of
molecules in flexible nanoporous materials.


More information
================
 - Homepage: https://iraspa.org/raspa/
]==])

whatis([==[Description: RASPA is a software package for simulating adsorption and diffusion of
molecules in flexible nanoporous materials.]==])
whatis([==[Homepage: https://iraspa.org/raspa/]==])
whatis([==[URL: https://iraspa.org/raspa/]==])

local root = "/home/software/EasyBuild/software/RASPA2/2.0.41-foss-2020b"

conflict("RASPA2")

if not ( isloaded("OpenBLAS/0.3.12") ) then
    load("OpenBLAS/0.3.12")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.1.0") ) then
    load("ScaLAPACK/2.1.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTRASPA2", root)
setenv("EBVERSIONRASPA2", "2.0.41")
setenv("EBDEVELRASPA2", pathJoin(root, "easybuild/MPI-GCC-10.2.0-OpenMPI-4.0.5-RASPA2-2.0.41-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
