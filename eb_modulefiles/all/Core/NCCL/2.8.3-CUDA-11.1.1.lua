help([==[

Description
===========
The NVIDIA Collective Communications Library (NCCL) implements multi-GPU and multi-node collective
communication primitives that are performance optimized for NVIDIA GPUs.


More information
================
 - Homepage: https://developer.nvidia.com/nccl
]==])

whatis([==[Description: The NVIDIA Collective Communications Library (NCCL) implements multi-GPU and multi-node collective
communication primitives that are performance optimized for NVIDIA GPUs.]==])
whatis([==[Homepage: https://developer.nvidia.com/nccl]==])
whatis([==[URL: https://developer.nvidia.com/nccl]==])

local root = "/home/software/EasyBuild/software/NCCL/2.8.3-CUDA-11.1.1"

conflict("NCCL")

if not ( isloaded("CUDAcore/11.1.1") ) then
    load("CUDAcore/11.1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTNCCL", root)
setenv("EBVERSIONNCCL", "2.8.3")
setenv("EBDEVELNCCL", pathJoin(root, "easybuild/Core-NCCL-2.8.3-CUDA-11.1.1-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
