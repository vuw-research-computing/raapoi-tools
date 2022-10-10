help([==[

Description
===========
Parallel netCDF: A Parallel I/O Library for NetCDF File Access


More information
================
 - Homepage: https://trac.mcs.anl.gov/projects/parallel-netcdf
]==])

whatis([==[Description: Parallel netCDF: A Parallel I/O Library for NetCDF File Access]==])
whatis([==[Homepage: https://trac.mcs.anl.gov/projects/parallel-netcdf]==])
whatis([==[URL: https://trac.mcs.anl.gov/projects/parallel-netcdf]==])

local root = "/home/software/EasyBuild/software/PnetCDF/1.12.1-gompi-2020a"

conflict("PnetCDF")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPNETCDF", root)
setenv("EBVERSIONPNETCDF", "1.12.1")
setenv("EBDEVELPNETCDF", pathJoin(root, "easybuild/MPI-GCC-9.3.0-OpenMPI-4.0.3-PnetCDF-1.12.1-easybuild-devel"))

prepend_path("PNETCDF", root)
-- Built with EasyBuild version 4.3.4
