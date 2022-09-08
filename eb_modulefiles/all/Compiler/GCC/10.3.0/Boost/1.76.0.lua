help([==[

Description
===========
Boost provides free peer-reviewed portable C++ source libraries.


More information
================
 - Homepage: https://www.boost.org/
]==])

whatis([==[Description: Boost provides free peer-reviewed portable C++ source libraries.]==])
whatis([==[Homepage: https://www.boost.org/]==])
whatis([==[URL: https://www.boost.org/]==])

local root = "/home/software/EasyBuild/software/Boost/1.76.0-GCC-10.3.0"

conflict("Boost")

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("XZ/5.2.5") ) then
    load("XZ/5.2.5")
end

if not ( isloaded("ICU/69.1") ) then
    load("ICU/69.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOST", root)
setenv("EBVERSIONBOOST", "1.76.0")
setenv("EBDEVELBOOST", pathJoin(root, "easybuild/Compiler-GCC-10.3.0-Boost-1.76.0-easybuild-devel"))

setenv("BOOST_ROOT", "/home/software/EasyBuild/software/Boost/1.76.0-GCC-10.3.0")
-- Built with EasyBuild version 4.5.3
