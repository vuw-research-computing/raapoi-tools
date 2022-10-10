help([==[

Description
===========
A low-latency GPU memory copy library based on NVIDIA GPUDirect RDMA technology.


More information
================
 - Homepage: https://github.com/NVIDIA/gdrcopy
]==])

whatis([==[Description: A low-latency GPU memory copy library based on NVIDIA GPUDirect RDMA technology.]==])
whatis([==[Homepage: https://github.com/NVIDIA/gdrcopy]==])
whatis([==[URL: https://github.com/NVIDIA/gdrcopy]==])

local root = "/home/software/EasyBuild/software/GDRCopy/2.1-GCCcore-10.2.0-CUDA-11.1.1"

conflict("GDRCopy")

if not ( isloaded("CUDAcore/11.1.1") ) then
    load("CUDAcore/11.1.1")
end

if not ( isloaded("Check/0.15.2") ) then
    load("Check/0.15.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGDRCOPY", root)
setenv("EBVERSIONGDRCOPY", "2.1")
setenv("EBDEVELGDRCOPY", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-GDRCopy-2.1-CUDA-11.1.1-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
