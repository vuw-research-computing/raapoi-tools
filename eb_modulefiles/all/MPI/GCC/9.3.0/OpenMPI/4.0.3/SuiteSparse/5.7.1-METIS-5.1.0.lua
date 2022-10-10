help([==[

Description
===========
SuiteSparse is a collection of libraries manipulate sparse matrices.


More information
================
 - Homepage: https://faculty.cse.tamu.edu/davis/suitesparse.html
]==])

whatis([==[Description: SuiteSparse is a collection of libraries manipulate sparse matrices.]==])
whatis([==[Homepage: https://faculty.cse.tamu.edu/davis/suitesparse.html]==])
whatis([==[URL: https://faculty.cse.tamu.edu/davis/suitesparse.html]==])

local root = "/home/software/EasyBuild/software/SuiteSparse/5.7.1-foss-2020a-METIS-5.1.0"

conflict("SuiteSparse")

if not ( isloaded("OpenBLAS/0.3.9") ) then
    load("OpenBLAS/0.3.9")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.1.0") ) then
    load("ScaLAPACK/2.1.0")
end

if not ( isloaded("METIS/5.1.0") ) then
    load("METIS/5.1.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSUITESPARSE", root)
setenv("EBVERSIONSUITESPARSE", "5.7.1")
setenv("EBDEVELSUITESPARSE", pathJoin(root, "easybuild/MPI-GCC-9.3.0-OpenMPI-4.0.3-SuiteSparse-5.7.1-METIS-5.1.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
