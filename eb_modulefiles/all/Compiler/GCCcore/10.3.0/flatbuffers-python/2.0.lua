help([==[

Description
===========
Python Flatbuffers runtime library.


More information
================
 - Homepage: https://github.com/google/flatbuffers/
]==])

whatis([==[Description: Python Flatbuffers runtime library.]==])
whatis([==[Homepage: https://github.com/google/flatbuffers/]==])
whatis([==[URL: https://github.com/google/flatbuffers/]==])

local root = "/home/software/EasyBuild/software/flatbuffers-python/2.0-GCCcore-10.3.0"

conflict("flatbuffers-python")

if not ( isloaded("binutils/2.36.1") ) then
    load("binutils/2.36.1")
end

if not ( isloaded("Python/3.9.5") ) then
    load("Python/3.9.5")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTFLATBUFFERSMINPYTHON", root)
setenv("EBVERSIONFLATBUFFERSMINPYTHON", "2.0")
setenv("EBDEVELFLATBUFFERSMINPYTHON", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-flatbuffers-python-2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.4.2
