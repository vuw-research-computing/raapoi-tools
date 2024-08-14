help([==[

Description
===========
R interface to the Apache Arrow C++ library


More information
================
 - Homepage: https://cran.r-project.org/web/packages/arrow
]==])

whatis([==[Description: R interface to the Apache Arrow C++ library]==])
whatis([==[Homepage: https://cran.r-project.org/web/packages/arrow]==])
whatis([==[URL: https://cran.r-project.org/web/packages/arrow]==])

local root = "/home/software/EasyBuild/software/arrow-R/6.0.0.2-foss-2021a-R-4.1.0"

conflict("arrow-R")

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

if not ( isloaded("Arrow/6.0.0") ) then
    load("Arrow/6.0.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTARROWMINR", root)
setenv("EBVERSIONARROWMINR", "6.0.0.2")
setenv("EBDEVELARROWMINR", pathJoin(root, "easybuild/MPI-GCC-10.3.0-OpenMPI-4.1.1-arrow-R-6.0.0.2-R-4.1.0-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.6.0
