help([==[

Description
===========
Provides bindings to the 'Geospatial' Data Abstraction Library ('GDAL') (>= 1.11.4 and <= 2.5.0) and
 access to projection/transformation operations from the 'PROJ.4' library.


More information
================
 - Homepage: https://rgdal.r-forge.r-project.org/
]==])

whatis([==[Description: Provides bindings to the 'Geospatial' Data Abstraction Library ('GDAL') (>= 1.11.4 and <= 2.5.0) and
 access to projection/transformation operations from the 'PROJ.4' library.]==])
whatis([==[Homepage: https://rgdal.r-forge.r-project.org/]==])
whatis([==[URL: https://rgdal.r-forge.r-project.org/]==])

local root = "/home/software/EasyBuild/software/rgdal/1.5-23-foss-2021a-R-4.1.0"

conflict("rgdal")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.9") ) then
    load("FFTW/3.3.9")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("R/4.1.0") ) then
    load("R/4.1.0")
end

if not ( isloaded("GDAL/3.3.0") ) then
    load("GDAL/3.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTRGDAL", root)
setenv("EBVERSIONRGDAL", "1.5-23")
setenv("EBDEVELRGDAL", pathJoin(root, "easybuild/MPI-GCC-10.3.0-OpenMPI-4.1.1-rgdal-1.5-23-R-4.1.0-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.5.5
