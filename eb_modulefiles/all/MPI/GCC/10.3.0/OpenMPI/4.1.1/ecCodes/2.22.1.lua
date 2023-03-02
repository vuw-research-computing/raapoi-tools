help([==[

Description
===========
ecCodes is a package developed by ECMWF which provides an application programming interface and
 a set of tools for decoding and encoding messages in the following formats: WMO FM-92 GRIB edition 1 and edition 2,
 WMO FM-94 BUFR edition 3 and edition 4, WMO GTS abbreviated header (only decoding).


More information
================
 - Homepage: https://software.ecmwf.int/wiki/display/ECC/ecCodes+Home
]==])

whatis([==[Description: ecCodes is a package developed by ECMWF which provides an application programming interface and
 a set of tools for decoding and encoding messages in the following formats: WMO FM-92 GRIB edition 1 and edition 2,
 WMO FM-94 BUFR edition 3 and edition 4, WMO GTS abbreviated header (only decoding).]==])
whatis([==[Homepage: https://software.ecmwf.int/wiki/display/ECC/ecCodes+Home]==])
whatis([==[URL: https://software.ecmwf.int/wiki/display/ECC/ecCodes+Home]==])

local root = "/home/software/EasyBuild/software/ecCodes/2.22.1-gompi-2021a"

conflict("ecCodes")

if not ( isloaded("netCDF/4.8.0") ) then
    load("netCDF/4.8.0")
end

if not ( isloaded("JasPer/2.0.28") ) then
    load("JasPer/2.0.28")
end

if not ( isloaded("libjpeg-turbo/2.0.6") ) then
    load("libjpeg-turbo/2.0.6")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTECCODES", root)
setenv("EBVERSIONECCODES", "2.22.1")
setenv("EBDEVELECCODES", pathJoin(root, "easybuild/MPI-GCC-10.3.0-OpenMPI-4.1.1-ecCodes-2.22.1-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
