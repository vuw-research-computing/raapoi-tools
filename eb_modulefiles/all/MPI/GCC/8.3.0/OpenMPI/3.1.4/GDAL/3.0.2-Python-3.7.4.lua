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

whatis([==[Description: GDAL is a translator library for raster geospatial data formats that is released under an X/MIT style
 Open Source license by the Open Source Geospatial Foundation. As a library, it presents a single abstract data model
 to the calling application for all supported formats. It also comes with a variety of useful commandline utilities for
 data translation and processing.]==])
whatis([==[Homepage: https://www.gdal.org]==])
whatis([==[URL: https://www.gdal.org]==])

local root = "/home/software/EasyBuild/software/GDAL/3.0.2-foss-2019b-Python-3.7.4"

conflict("GDAL")

if not ( isloaded("OpenBLAS/0.3.7") ) then
    load("OpenBLAS/0.3.7")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2") ) then
    load("ScaLAPACK/2.0.2")
end

if not ( isloaded("Python/3.7.4") ) then
    load("Python/3.7.4")
end

if not ( isloaded("netCDF/4.7.1") ) then
    load("netCDF/4.7.1")
end

if not ( isloaded("expat/2.2.7") ) then
    load("expat/2.2.7")
end

if not ( isloaded("GEOS/3.8.0-Python-3.7.4") ) then
    load("GEOS/3.8.0-Python-3.7.4")
end

if not ( isloaded("SQLite/3.29.0") ) then
    load("SQLite/3.29.0")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("libjpeg-turbo/2.0.3") ) then
    load("libjpeg-turbo/2.0.3")
end

if not ( isloaded("JasPer/2.0.14") ) then
    load("JasPer/2.0.14")
end

if not ( isloaded("LibTIFF/4.0.10") ) then
    load("LibTIFF/4.0.10")
end

if not ( isloaded("cURL/7.66.0") ) then
    load("cURL/7.66.0")
end

if not ( isloaded("PCRE/8.43") ) then
    load("PCRE/8.43")
end

if not ( isloaded("PROJ/6.2.1") ) then
    load("PROJ/6.2.1")
end

if not ( isloaded("libgeotiff/1.5.1") ) then
    load("libgeotiff/1.5.1")
end

if not ( isloaded("SciPy-bundle/2019.10-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-Python-3.7.4")
end

if not ( isloaded("HDF/4.2.14") ) then
    load("HDF/4.2.14")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGDAL", root)
setenv("EBVERSIONGDAL", "3.0.2")
setenv("EBDEVELGDAL", pathJoin(root, "easybuild/MPI-GCC-8.3.0-OpenMPI-3.1.4-GDAL-3.0.2-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.4
