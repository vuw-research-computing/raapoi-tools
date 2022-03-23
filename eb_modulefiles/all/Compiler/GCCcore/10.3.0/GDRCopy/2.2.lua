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

local root = "/home/software/EasyBuild/software/GDRCopy/2.2-GCCcore-10.3.0"

conflict("GDRCopy")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTGDRCOPY", root)
setenv("EBVERSIONGDRCOPY", "2.2")
setenv("EBDEVELGDRCOPY", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-GDRCopy-2.2-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
