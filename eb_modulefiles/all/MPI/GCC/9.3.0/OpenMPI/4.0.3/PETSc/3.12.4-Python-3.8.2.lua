help([==[

Description
===========
PETSc, pronounced PET-see (the S is silent), is a suite of data structures and routines for the
 scalable (parallel) solution of scientific applications modeled by partial differential equations.


More information
================
 - Homepage: https://www.mcs.anl.gov/petsc
]==])

whatis([==[Description: PETSc, pronounced PET-see (the S is silent), is a suite of data structures and routines for the
 scalable (parallel) solution of scientific applications modeled by partial differential equations.]==])
whatis([==[Homepage: https://www.mcs.anl.gov/petsc]==])
whatis([==[URL: https://www.mcs.anl.gov/petsc]==])

local root = "/home/software/EasyBuild/software/PETSc/3.12.4-foss-2020a-Python-3.8.2"

conflict("PETSc")

if not ( isloaded("OpenBLAS/0.3.9") ) then
    load("OpenBLAS/0.3.9")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.1.0") ) then
    load("ScaLAPACK/2.1.0")
end

if not ( isloaded("Python/3.8.2") ) then
    load("Python/3.8.2")
end

if not ( isloaded("SciPy-bundle/2020.03-Python-3.8.2") ) then
    load("SciPy-bundle/2020.03-Python-3.8.2")
end

if not ( isloaded("Boost/1.72.0") ) then
    load("Boost/1.72.0")
end

if not ( isloaded("METIS/5.1.0") ) then
    load("METIS/5.1.0")
end

if not ( isloaded("SCOTCH/6.0.9") ) then
    load("SCOTCH/6.0.9")
end

if not ( isloaded("MUMPS/5.2.1-metis") ) then
    load("MUMPS/5.2.1-metis")
end

if not ( isloaded("SuiteSparse/5.7.1-METIS-5.1.0") ) then
    load("SuiteSparse/5.7.1-METIS-5.1.0")
end

if not ( isloaded("Hypre/2.18.2") ) then
    load("Hypre/2.18.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "lib/petsc/bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/petsc/bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPETSC", root)
setenv("EBVERSIONPETSC", "3.12.4")
setenv("EBDEVELPETSC", pathJoin(root, "easybuild/MPI-GCC-9.3.0-OpenMPI-4.0.3-PETSc-3.12.4-Python-3.8.2-easybuild-devel"))

setenv("PETSC_DIR", "/home/software/EasyBuild/software/PETSc/3.12.4-foss-2020a-Python-3.8.2")
-- Built with EasyBuild version 4.3.4
