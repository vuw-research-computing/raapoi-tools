help([==[

Description
===========
The NVIDIA CUDA Deep Neural Network library (cuDNN) is a GPU-accelerated library of primitives for
    deep neural networks.


More information
================
 - Homepage: https://developer.nvidia.com/cudnn
]==])

whatis([==[Description: The NVIDIA CUDA Deep Neural Network library (cuDNN) is a GPU-accelerated library of primitives for
    deep neural networks.]==])
whatis([==[Homepage: https://developer.nvidia.com/cudnn]==])
whatis([==[URL: https://developer.nvidia.com/cudnn]==])

local root = "/home/software/EasyBuild/software/cuDNN/8.0.4.30-CUDA-11.1.1"

conflict("cuDNN")

if not ( isloaded("CUDAcore/11.1.1") ) then
    load("CUDAcore/11.1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTCUDNN", root)
setenv("EBVERSIONCUDNN", "8.0.4.30")
setenv("EBDEVELCUDNN", pathJoin(root, "easybuild/Core-cuDNN-8.0.4.30-CUDA-11.1.1-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
