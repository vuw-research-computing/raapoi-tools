help([==[

Description
===========
Hypre is a library for solving large, sparse linear systems of equations on massively
 parallel computers. The problems of interest arise in the simulation codes being developed at LLNL
 and elsewhere to study physical phenomena in the defense, environmental, energy, and biological sciences.


More information
================
 - Homepage: https://computation.llnl.gov/projects/hypre-scalable-linear-solvers-multigrid-methods
]==])

whatis([==[Description: Hypre is a library for solving large, sparse linear systems of equations on massively
 parallel computers. The problems of interest arise in the simulation codes being developed at LLNL
 and elsewhere to study physical phenomena in the defense, environmental, energy, and biological sciences.]==])
whatis([==[Homepage: https://computation.llnl.gov/projects/hypre-scalable-linear-solvers-multigrid-methods]==])
whatis([==[URL: https://computation.llnl.gov/projects/hypre-scalable-linear-solvers-multigrid-methods]==])

local root = "/home/software/EasyBuild/software/Hypre/2.18.2-foss-2020a"

conflict("Hypre")

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
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTHYPRE", root)
setenv("EBVERSIONHYPRE", "2.18.2")
setenv("EBDEVELHYPRE", pathJoin(root, "easybuild/MPI-GCC-9.3.0-OpenMPI-4.0.3-Hypre-2.18.2-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
