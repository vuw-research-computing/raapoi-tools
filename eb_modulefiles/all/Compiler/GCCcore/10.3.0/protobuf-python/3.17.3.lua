help([==[

Description
===========
Python Protocol Buffers runtime library.


More information
================
 - Homepage: https://github.com/google/protobuf/
]==])

whatis([==[Description: Python Protocol Buffers runtime library.]==])
whatis([==[Homepage: https://github.com/google/protobuf/]==])
whatis([==[URL: https://github.com/google/protobuf/]==])

local root = "/home/software/EasyBuild/software/protobuf-python/3.17.3-GCCcore-10.3.0"

conflict("protobuf-python")

if not ( isloaded("Python/3.9.5") ) then
    load("Python/3.9.5")
end

if not ( isloaded("protobuf/3.17.3") ) then
    load("protobuf/3.17.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPROTOBUFMINPYTHON", root)
setenv("EBVERSIONPROTOBUFMINPYTHON", "3.17.3")
setenv("EBDEVELPROTOBUFMINPYTHON", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-protobuf-python-3.17.3-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.4.2
