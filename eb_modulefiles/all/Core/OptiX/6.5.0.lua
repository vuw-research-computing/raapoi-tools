help([==[

Description
===========
OptiX is NVIDIA SDK for easy ray tracing performance.
 It provides a simple framework for accessing the GPU’s massive ray tracing
 power using state-of-the-art GPU algorithms.


More information
================
 - Homepage: https://developer.nvidia.com/optix
]==])

whatis([==[Description: OptiX is NVIDIA SDK for easy ray tracing performance.
 It provides a simple framework for accessing the GPU’s massive ray tracing
 power using state-of-the-art GPU algorithms.]==])
whatis([==[Homepage: https://developer.nvidia.com/optix]==])
whatis([==[URL: https://developer.nvidia.com/optix]==])

local root = "/home/software/EasyBuild/software/OptiX/6.5.0"

conflict("OptiX")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTOPTIX", root)
setenv("EBVERSIONOPTIX", "6.5.0")
setenv("EBDEVELOPTIX", pathJoin(root, "easybuild/Core-OptiX-6.5.0-easybuild-devel"))

setenv("OPTIX_HOME", "/home/software/EasyBuild/software/OptiX/6.5.0")
prepend_path("PATH", root)
-- Built with EasyBuild version 4.5.3
