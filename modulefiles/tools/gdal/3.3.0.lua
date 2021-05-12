help([==[

Description
===========
GDAL is a translator library for raster geospatial data formats that is released under an X/MIT style
 Open Source license by the Open Source Geospatial Foundation. As a library, it presents a single abstract data model
 to the calling application for all supported formats. It also comes with a variety of useful commandline utilities for
 data translation and processing.

More information
================
 - Homepage: https://www.gdal.org
]==])

whatis([==[Description: 
GDAL is a translator library for raster geospatial data formats that is released under an X/MIT style
Open Source license by the Open Source Geospatial Foundation. As a library, it presents a single abstract data model
to the calling application for all supported formats. It also comes with a variety of useful commandline utilities for
data translation and processing.
]==])
whatis([==[Homepage: https://www.gdal.org]==])
whatis([==[URL: https://www.gdal.org]==])

local root = "/home/software/apps/tools/gdal/3.3.0"

conflict("tools/proj")

if not ( isloaded("gcc/8.2.0") ) then
    load("gcc/8.2.0")
end

if not ( isloaded("tools/proj/8.0.1") ) then
    load("tools/proj/8.0.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))