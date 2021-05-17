help([==[

Description
===========
Unified Communication X
An open-source production grade communication framework for data centric
and high-performance applications


More information
================
 - Homepage: http://www.openucx.org/
]==])

whatis([==[Description: Unified Communication X
An open-source production grade communication framework for data centric
and high-performance applications
]==])
whatis([==[Homepage: http://www.openucx.org/]==])
whatis([==[URL: http://www.openucx.org/]==])

local root = "/home/software/EasyBuild/software/UCX/1.9.0-GCCcore-10.2.0-CUDA-11.1.1"

conflict("UCX")

if not ( isloaded("numactl/2.0.13") ) then
    load("numactl/2.0.13")
end

if not ( isloaded("CUDAcore/11.1.1") ) then
    load("CUDAcore/11.1.1")
end

if not ( isloaded("GDRCopy/2.1-CUDA-11.1.1") ) then
    load("GDRCopy/2.1-CUDA-11.1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTUCX", root)
setenv("EBVERSIONUCX", "1.9.0")
setenv("EBDEVELUCX", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-UCX-1.9.0-CUDA-11.1.1-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
