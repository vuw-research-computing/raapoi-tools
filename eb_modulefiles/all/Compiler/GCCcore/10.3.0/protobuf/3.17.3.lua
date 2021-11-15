help([==[

Description
===========
Google Protocol Buffers


More information
================
 - Homepage: https://github.com/google/protobuf/
]==])

whatis([==[Description: Google Protocol Buffers]==])
whatis([==[Homepage: https://github.com/google/protobuf/]==])
whatis([==[URL: https://github.com/google/protobuf/]==])

local root = "/home/software/EasyBuild/software/protobuf/3.17.3-GCCcore-10.3.0"

conflict("protobuf")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPROTOBUF", root)
setenv("EBVERSIONPROTOBUF", "3.17.3")
setenv("EBDEVELPROTOBUF", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-protobuf-3.17.3-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
