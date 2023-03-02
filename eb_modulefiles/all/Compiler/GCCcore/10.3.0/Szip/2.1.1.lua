help([==[

Description
===========
Szip compression software, providing lossless compression of scientific data


More information
================
 - Homepage: https://www.hdfgroup.org/doc_resource/SZIP/
]==])

whatis([==[Description: 
 Szip compression software, providing lossless compression of scientific data
]==])
whatis([==[Homepage: https://www.hdfgroup.org/doc_resource/SZIP/]==])
whatis([==[URL: https://www.hdfgroup.org/doc_resource/SZIP/]==])

local root = "/home/software/EasyBuild/software/Szip/2.1.1-GCCcore-10.3.0"

conflict("Szip")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSZIP", root)
setenv("EBVERSIONSZIP", "2.1.1")
setenv("EBDEVELSZIP", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-Szip-2.1.1-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
