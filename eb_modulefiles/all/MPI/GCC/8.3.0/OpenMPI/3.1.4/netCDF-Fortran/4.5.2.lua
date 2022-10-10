help([==[

Description
===========
NetCDF (network Common Data Form) is a set of software libraries
 and machine-independent data formats that support the creation, access, and sharing of array-oriented
 scientific data.


More information
================
 - Homepage: https://www.unidata.ucar.edu/software/netcdf/
]==])

whatis([==[Description: NetCDF (network Common Data Form) is a set of software libraries
 and machine-independent data formats that support the creation, access, and sharing of array-oriented
 scientific data.]==])
whatis([==[Homepage: https://www.unidata.ucar.edu/software/netcdf/]==])
whatis([==[URL: https://www.unidata.ucar.edu/software/netcdf/]==])

local root = "/home/software/EasyBuild/software/netCDF-Fortran/4.5.2-gompi-2019b"

conflict("netCDF-Fortran")

if not ( isloaded("netCDF/4.7.1") ) then
    load("netCDF/4.7.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNETCDFMINFORTRAN", root)
setenv("EBVERSIONNETCDFMINFORTRAN", "4.5.2")
setenv("EBDEVELNETCDFMINFORTRAN", pathJoin(root, "easybuild/MPI-GCC-8.3.0-OpenMPI-3.1.4-netCDF-Fortran-4.5.2-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
