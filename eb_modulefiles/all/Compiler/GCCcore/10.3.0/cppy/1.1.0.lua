help([==[

Description
===========
A small C++ header library which makes it easier to write
Python extension modules. The primary feature is a PyObject smart pointer
which automatically handles reference counting and provides convenience
methods for performing common object operations.


More information
================
 - Homepage: https://github.com/nucleic/cppy
]==])

whatis([==[Description: A small C++ header library which makes it easier to write
Python extension modules. The primary feature is a PyObject smart pointer
which automatically handles reference counting and provides convenience
methods for performing common object operations.]==])
whatis([==[Homepage: https://github.com/nucleic/cppy]==])
whatis([==[URL: https://github.com/nucleic/cppy]==])

local root = "/home/software/EasyBuild/software/cppy/1.1.0-GCCcore-10.3.0"

conflict("cppy")

if not ( isloaded("Python/3.9.5") ) then
    load("Python/3.9.5")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTCPPY", root)
setenv("EBVERSIONCPPY", "1.1.0")
setenv("EBDEVELCPPY", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-cppy-1.1.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
