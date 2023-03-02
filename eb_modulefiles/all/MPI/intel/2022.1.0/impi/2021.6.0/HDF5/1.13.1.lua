help([==[

Description
===========
HDF5 is a data model, library, and file format for storing and managing data.
 It supports an unlimited variety of datatypes, and is designed for flexible
 and efficient I/O and for high volume and complex data.


More information
================
 - Homepage: https://portal.hdfgroup.org/display/support
]==])

whatis([==[Description: HDF5 is a data model, library, and file format for storing and managing data.
 It supports an unlimited variety of datatypes, and is designed for flexible
 and efficient I/O and for high volume and complex data.]==])
whatis([==[Homepage: https://portal.hdfgroup.org/display/support]==])
whatis([==[URL: https://portal.hdfgroup.org/display/support]==])

local root = "/home/software/EasyBuild/software/HDF5/1.13.1-iimpi-2022a"

conflict("HDF5")

if not ( isloaded("Szip/2.1.1") ) then
    load("Szip/2.1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTHDF5", root)
setenv("EBVERSIONHDF5", "1.13.1")
setenv("EBDEVELHDF5", pathJoin(root, "easybuild/MPI-intel-2022.1.0-impi-2021.6.0-HDF5-1.13.1-easybuild-devel"))

setenv("HDF5_DIR", "/home/software/EasyBuild/software/HDF5/1.13.1-iimpi-2022a")
-- Built with EasyBuild version 4.6.0
