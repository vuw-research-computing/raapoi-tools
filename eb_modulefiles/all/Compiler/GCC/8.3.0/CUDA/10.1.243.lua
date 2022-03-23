help([==[

Description
===========
CUDA (formerly Compute Unified Device Architecture) is a parallel
 computing platform and programming model created by NVIDIA and implemented by the
 graphics processing units (GPUs) that they produce. CUDA gives developers access
 to the virtual instruction set and memory of the parallel computational elements in CUDA GPUs.


More information
================
 - Homepage: https://developer.nvidia.com/cuda-toolkit
]==])

whatis([==[Description: CUDA (formerly Compute Unified Device Architecture) is a parallel
 computing platform and programming model created by NVIDIA and implemented by the
 graphics processing units (GPUs) that they produce. CUDA gives developers access
 to the virtual instruction set and memory of the parallel computational elements in CUDA GPUs.]==])
whatis([==[Homepage: https://developer.nvidia.com/cuda-toolkit]==])
whatis([==[URL: https://developer.nvidia.com/cuda-toolkit]==])

local root = "/home/software/EasyBuild/software/CUDA/10.1.243-GCC-8.3.0"

conflict("CUDA")
prepend_path("MODULEPATH", "/home/software/tools/eb_modulefiles/all/Compiler/GCC-CUDA/8.3.0-10.1.243")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("CPATH", pathJoin(root, "extras/CUPTI/include"))
prepend_path("CPATH", pathJoin(root, "nvvm/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "extras/CUPTI/lib64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "nvvm/lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "stubs/lib64"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "nvvm/bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCUDA", root)
setenv("EBVERSIONCUDA", "10.1.243")
setenv("EBDEVELCUDA", pathJoin(root, "easybuild/Compiler-GCC-8.3.0-CUDA-10.1.243-easybuild-devel"))

prepend_path("PATH", root)
setenv("CUDA_HOME", "/home/software/EasyBuild/software/CUDA/10.1.243-GCC-8.3.0")
setenv("CUDA_ROOT", "/home/software/EasyBuild/software/CUDA/10.1.243-GCC-8.3.0")
setenv("CUDA_PATH", "/home/software/EasyBuild/software/CUDA/10.1.243-GCC-8.3.0")
-- Built with EasyBuild version 4.3.4
