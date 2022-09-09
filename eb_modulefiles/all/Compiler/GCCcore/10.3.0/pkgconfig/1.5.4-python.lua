help([==[

Description
===========
pkgconfig is a Python module to interface with the pkg-config command line tool


More information
================
 - Homepage: https://github.com/matze/pkgconfig
]==])

whatis([==[Description: pkgconfig is a Python module to interface with the pkg-config command line tool]==])
whatis([==[Homepage: https://github.com/matze/pkgconfig]==])
whatis([==[URL: https://github.com/matze/pkgconfig]==])

local root = "/home/software/EasyBuild/software/pkgconfig/1.5.4-GCCcore-10.3.0-python"

conflict("pkgconfig")

if not ( isloaded("Python/3.9.5") ) then
    load("Python/3.9.5")
end

if not ( isloaded("pkg-config/0.29.2") ) then
    load("pkg-config/0.29.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPKGCONFIG", root)
setenv("EBVERSIONPKGCONFIG", "1.5.4")
setenv("EBDEVELPKGCONFIG", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-pkgconfig-1.5.4-python-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.4.2
