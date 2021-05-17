help([==[

Description
===========
GEOS (Geometry Engine - Open Source) is a C++ port of the Java Topology Suite (JTS)


More information
================
 - Homepage: https://trac.osgeo.org/geos
]==])

whatis([==[Description: GEOS (Geometry Engine - Open Source) is a C++ port of the Java Topology Suite (JTS)]==])
whatis([==[Homepage: https://trac.osgeo.org/geos]==])
whatis([==[URL: https://trac.osgeo.org/geos]==])

local root = "/home/software/EasyBuild/software/GEOS/3.8.0-GCC-8.3.0-Python-3.7.4"

conflict("GEOS")

if not ( isloaded("Python/3.7.4") ) then
    load("Python/3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGEOS", root)
setenv("EBVERSIONGEOS", "3.8.0")
setenv("EBDEVELGEOS", pathJoin(root, "easybuild/Compiler-GCC-8.3.0-GEOS-3.8.0-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.4
