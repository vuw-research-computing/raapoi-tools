help([==[

Description
===========
The Open MPI Project is an open source MPI-3 implementation.


More information
================
 - Homepage: https://www.open-mpi.org/
]==])

whatis([==[Description: The Open MPI Project is an open source MPI-3 implementation.]==])
whatis([==[Homepage: https://www.open-mpi.org/]==])
whatis([==[URL: https://www.open-mpi.org/]==])

local root = "/home/software/EasyBuild/software/OpenMPI/3.1.4-GCC-8.3.0"

conflict("OpenMPI")

if not ( isloaded("hwloc/1.11.12") ) then
    load("hwloc/1.11.12")
end

if not ( isloaded("PMIx/3.0.2") ) then
    load("PMIx/3.0.2")
end
prepend_path("MODULEPATH", "/home/software/tools/eb_modulefiles/all/MPI/GCC/8.3.0/OpenMPI/3.1.4")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTOPENMPI", root)
setenv("EBVERSIONOPENMPI", "3.1.4")
setenv("EBDEVELOPENMPI", pathJoin(root, "easybuild/Compiler-GCC-8.3.0-OpenMPI-3.1.4-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
