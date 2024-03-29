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

local root = "/home/software/EasyBuild/software/Boost/1.71.0-gompi-2019b"

conflict("Boost")

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOST", root)
setenv("EBVERSIONBOOST", "1.71.0")
setenv("EBDEVELBOOST", pathJoin(root, "easybuild/MPI-GCC-8.3.0-OpenMPI-3.1.4-Boost-1.71.0-easybuild-devel"))

setenv("BOOST_ROOT", "/home/software/EasyBuild/software/Boost/1.71.0-gompi-2019b")
-- Built with EasyBuild version 4.4.1
