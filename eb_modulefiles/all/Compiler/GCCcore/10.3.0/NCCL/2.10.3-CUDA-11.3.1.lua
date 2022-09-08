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

local root = "/home/software/EasyBuild/software/NCCL/2.10.3-GCCcore-10.3.0-CUDA-11.3.1"

conflict("NCCL")

if not ( isloaded("CUDA/11.3.1") ) then
    load("CUDA/11.3.1")
end

if not ( isloaded("UCX-CUDA/1.10.0-CUDA-11.3.1") ) then
    load("UCX-CUDA/1.10.0-CUDA-11.3.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTNCCL", root)
setenv("EBVERSIONNCCL", "2.10.3")
setenv("EBDEVELNCCL", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-NCCL-2.10.3-CUDA-11.3.1-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
