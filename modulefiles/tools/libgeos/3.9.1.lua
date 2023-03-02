help([==[

Description
===========
GEOS is a C++11 library for performing operations on two-dimensional vector geometries. 
It is primarily a port of the JTS Topology Suite Java library. It provides many of the algorithms used by PostGIS, 
the Shapely package for Python, the sf package for R, and others.

More information
================
 - Homepage: https://github.com/libgeos/geos
]==])

whatis([==[Description: 
GEOS is a C++11 library for performing operations on two-dimensional vector geometries. 
It is primarily a port of the JTS Topology Suite Java library. It provides many of the algorithms used by PostGIS, 
the Shapely package for Python, the sf package for R, and others.
]==])
whatis([==[Homepage: https://github.com/libgeos/geos]==])
whatis([==[URL: https://github.com/libgeos/geos]==])

local root = "/home/software/apps/tools/libgeos/3.9.1"

conflict("tools/libgeos")

if not ( isloaded("gcc/8.2.0") ) then
    load("gcc/8.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("PATH", pathJoin(root, "tools"))