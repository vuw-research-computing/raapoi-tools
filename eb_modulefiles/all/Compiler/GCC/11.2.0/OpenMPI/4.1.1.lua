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

local root = "/home/software/EasyBuild/software/OpenMPI/4.1.1-GCC-11.2.0"

conflict("OpenMPI")

if not ( isloaded("hwloc/2.5.0") ) then
    load("hwloc/2.5.0")
end

if not ( isloaded("libevent/2.1.12") ) then
    load("libevent/2.1.12")
end

if not ( isloaded("UCX/1.11.2") ) then
    load("UCX/1.11.2")
end

if not ( isloaded("libfabric/1.13.2") ) then
    load("libfabric/1.13.2")
end

if not ( isloaded("PMIx/4.1.0") ) then
    load("PMIx/4.1.0")
end
prepend_path("MODULEPATH", "/home/software/tools/eb_modulefiles/all/MPI/GCC/11.2.0/OpenMPI/4.1.1")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTOPENMPI", root)
setenv("EBVERSIONOPENMPI", "4.1.1")
setenv("EBDEVELOPENMPI", pathJoin(root, "easybuild/Compiler-GCC-11.2.0-OpenMPI-4.1.1-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
