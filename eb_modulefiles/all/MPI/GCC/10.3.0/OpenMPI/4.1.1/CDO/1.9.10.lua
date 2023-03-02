help([==[

Description
===========
CDO is a collection of command line Operators to manipulate and analyse Climate and NWP model Data.


More information
================
 - Homepage: https://code.zmaw.de/projects/cdo
]==])

whatis([==[Description: CDO is a collection of command line Operators to manipulate and analyse Climate and NWP model Data.]==])
whatis([==[Homepage: https://code.zmaw.de/projects/cdo]==])
whatis([==[URL: https://code.zmaw.de/projects/cdo]==])

local root = "/home/software/EasyBuild/software/CDO/1.9.10-gompi-2021a"

conflict("CDO")

if not ( isloaded("HDF5/1.10.7") ) then
    load("HDF5/1.10.7")
end

if not ( isloaded("netCDF/4.8.0") ) then
    load("netCDF/4.8.0")
end

if not ( isloaded("YAXT/0.9.1") ) then
    load("YAXT/0.9.1")
end

if not ( isloaded("ecCodes/2.22.1") ) then
    load("ecCodes/2.22.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCDO", root)
setenv("EBVERSIONCDO", "1.9.10")
setenv("EBDEVELCDO", pathJoin(root, "easybuild/MPI-GCC-10.3.0-OpenMPI-4.1.1-CDO-1.9.10-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
