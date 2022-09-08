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

local root = "/home/software/EasyBuild/software/OpenMPI/4.0.5-gcccuda-2020b"

conflict("OpenMPI")

if not ( isloaded("hwloc/2.2.0") ) then
    load("hwloc/2.2.0")
end

if not ( isloaded("libevent/2.1.12") ) then
    load("libevent/2.1.12")
end

if not ( isloaded("UCX/1.9.0-CUDA-11.1.1") ) then
    load("UCX/1.9.0-CUDA-11.1.1")
end

if not ( isloaded("libfabric/1.11.0") ) then
    load("libfabric/1.11.0")
end

if not ( isloaded("PMIx/3.1.5") ) then
    load("PMIx/3.1.5")
end
prepend_path("MODULEPATH", "/home/software/tools/eb_modulefiles/all/MPI/GCC-CUDA/10.2.0-11.1.1/OpenMPI/4.0.5")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTOPENMPI", root)
setenv("EBVERSIONOPENMPI", "4.0.5")
setenv("EBDEVELOPENMPI", pathJoin(root, "easybuild/Compiler-GCC-CUDA-10.2.0-11.1.1-OpenMPI-4.0.5-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
