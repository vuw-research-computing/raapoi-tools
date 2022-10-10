help([==[

Description
===========
A parallel sparse direct solver


More information
================
 - Homepage: https://graal.ens-lyon.fr/MUMPS/
]==])

whatis([==[Description: A parallel sparse direct solver]==])
whatis([==[Homepage: https://graal.ens-lyon.fr/MUMPS/]==])
whatis([==[URL: https://graal.ens-lyon.fr/MUMPS/]==])

local root = "/home/software/EasyBuild/software/MUMPS/5.2.1-foss-2020a-metis"

conflict("MUMPS")

if not ( isloaded("OpenBLAS/0.3.9") ) then
    load("OpenBLAS/0.3.9")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.1.0") ) then
    load("ScaLAPACK/2.1.0")
end

if not ( isloaded("SCOTCH/6.0.9") ) then
    load("SCOTCH/6.0.9")
end

if not ( isloaded("METIS/5.1.0") ) then
    load("METIS/5.1.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMUMPS", root)
setenv("EBVERSIONMUMPS", "5.2.1")
setenv("EBDEVELMUMPS", pathJoin(root, "easybuild/MPI-GCC-9.3.0-OpenMPI-4.0.3-MUMPS-5.2.1-metis-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
