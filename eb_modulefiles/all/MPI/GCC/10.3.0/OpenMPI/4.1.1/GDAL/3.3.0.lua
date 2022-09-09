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

local root = "/home/software/EasyBuild/software/GDAL/3.3.0-foss-2021a"

conflict("GDAL")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.9") ) then
    load("FFTW/3.3.9")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("Python/3.9.5") ) then
    load("Python/3.9.5")
end

if not ( isloaded("netCDF/4.8.0") ) then
    load("netCDF/4.8.0")
end

if not ( isloaded("expat/2.2.9") ) then
    load("expat/2.2.9")
end

if not ( isloaded("GEOS/3.9.1") ) then
    load("GEOS/3.9.1")
end

if not ( isloaded("SQLite/3.35.4") ) then
    load("SQLite/3.35.4")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("libjpeg-turbo/2.0.6") ) then
    load("libjpeg-turbo/2.0.6")
end

if not ( isloaded("JasPer/2.0.28") ) then
    load("JasPer/2.0.28")
end

if not ( isloaded("LibTIFF/4.2.0") ) then
    load("LibTIFF/4.2.0")
end

if not ( isloaded("cURL/7.76.0") ) then
    load("cURL/7.76.0")
end

if not ( isloaded("PCRE/8.44") ) then
    load("PCRE/8.44")
end

if not ( isloaded("PROJ/8.0.1") ) then
    load("PROJ/8.0.1")
end

if not ( isloaded("libgeotiff/1.6.0") ) then
    load("libgeotiff/1.6.0")
end

if not ( isloaded("SciPy-bundle/2021.05") ) then
    load("SciPy-bundle/2021.05")
end

if not ( isloaded("HDF5/1.10.7") ) then
    load("HDF5/1.10.7")
end

if not ( isloaded("HDF/4.2.15") ) then
    load("HDF/4.2.15")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGDAL", root)
setenv("EBVERSIONGDAL", "3.3.0")
setenv("EBDEVELGDAL", pathJoin(root, "easybuild/MPI-GCC-10.3.0-OpenMPI-4.1.1-GDAL-3.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.3
