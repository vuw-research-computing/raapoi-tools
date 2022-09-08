help([==[

Description
===========
ncdf4: Interface to Unidata netCDF (version 4 or earlier) format data files


More information
================
 - Homepage: https://cran.r-project.org/web/packages/ncdf4
]==])

whatis([==[Description: ncdf4: Interface to Unidata netCDF (version 4 or earlier) format data files]==])
whatis([==[Homepage: https://cran.r-project.org/web/packages/ncdf4]==])
whatis([==[URL: https://cran.r-project.org/web/packages/ncdf4]==])

local root = "/home/software/EasyBuild/software/ncdf4/1.17-foss-2021a-R-4.1.0"

conflict("ncdf4")

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

if not ( isloaded("netCDF/4.8.0") ) then
    load("netCDF/4.8.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTNCDF4", root)
setenv("EBVERSIONNCDF4", "1.17")
setenv("EBDEVELNCDF4", pathJoin(root, "easybuild/MPI-GCC-10.3.0-OpenMPI-4.1.1-ncdf4-1.17-R-4.1.0-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.6.0
