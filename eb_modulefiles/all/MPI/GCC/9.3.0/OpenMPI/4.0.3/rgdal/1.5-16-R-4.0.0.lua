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

local root = "/home/software/EasyBuild/software/rgdal/1.5-16-foss-2020a-R-4.0.0"

conflict("rgdal")

if not ( isloaded("OpenBLAS/0.3.9") ) then
    load("OpenBLAS/0.3.9")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.1.0") ) then
    load("ScaLAPACK/2.1.0")
end

if not ( isloaded("R/4.0.0") ) then
    load("R/4.0.0")
end

if not ( isloaded("GDAL/3.0.4-Python-3.8.2") ) then
    load("GDAL/3.0.4-Python-3.8.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTRGDAL", root)
setenv("EBVERSIONRGDAL", "1.5-16")
setenv("EBDEVELRGDAL", pathJoin(root, "easybuild/MPI-GCC-9.3.0-OpenMPI-4.0.3-rgdal-1.5-16-R-4.0.0-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.3.4
