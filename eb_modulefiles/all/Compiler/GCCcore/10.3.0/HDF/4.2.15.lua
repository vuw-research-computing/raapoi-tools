help([==[

Description
===========
HDF (also known as HDF4) is a library and multi-object file format for
 storing and managing data between machines.


More information
================
 - Homepage: https://www.hdfgroup.org/products/hdf4/
]==])

whatis([==[Description: 
 HDF (also known as HDF4) is a library and multi-object file format for
 storing and managing data between machines.
]==])
whatis([==[Homepage: https://www.hdfgroup.org/products/hdf4/]==])
whatis([==[URL: https://www.hdfgroup.org/products/hdf4/]==])

local root = "/home/software/EasyBuild/software/HDF/4.2.15-GCCcore-10.3.0"

conflict("HDF")

if not ( isloaded("libjpeg-turbo/2.0.6") ) then
    load("libjpeg-turbo/2.0.6")
end

if not ( isloaded("Szip/2.1.1") ) then
    load("Szip/2.1.1")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("libtirpc/1.3.2") ) then
    load("libtirpc/1.3.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTHDF", root)
setenv("EBVERSIONHDF", "4.2.15")
setenv("EBDEVELHDF", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-HDF-4.2.15-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/hdf"))
-- Built with EasyBuild version 4.5.3
