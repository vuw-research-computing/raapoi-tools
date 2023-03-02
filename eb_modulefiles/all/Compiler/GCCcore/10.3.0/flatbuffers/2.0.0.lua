help([==[

Description
===========
FlatBuffers: Memory Efficient Serialization Library


More information
================
 - Homepage: https://github.com/google/flatbuffers/
]==])

whatis([==[Description: FlatBuffers: Memory Efficient Serialization Library]==])
whatis([==[Homepage: https://github.com/google/flatbuffers/]==])
whatis([==[URL: https://github.com/google/flatbuffers/]==])

local root = "/home/software/EasyBuild/software/flatbuffers/2.0.0-GCCcore-10.3.0"

conflict("flatbuffers")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFLATBUFFERS", root)
setenv("EBVERSIONFLATBUFFERS", "2.0.0")
setenv("EBDEVELFLATBUFFERS", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-flatbuffers-2.0.0-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
