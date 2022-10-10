help([==[

Description
===========
Library for reading and writing coordinate system information from/to GeoTIFF files


More information
================
 - Homepage: https://directory.fsf.org/wiki/Libgeotiff
]==])

whatis([==[Description: Library for reading and writing coordinate system information from/to GeoTIFF files]==])
whatis([==[Homepage: https://directory.fsf.org/wiki/Libgeotiff]==])
whatis([==[URL: https://directory.fsf.org/wiki/Libgeotiff]==])

local root = "/home/software/EasyBuild/software/libgeotiff/1.6.0-GCCcore-10.2.0"

conflict("libgeotiff")

if not ( isloaded("PROJ/7.2.1") ) then
    load("PROJ/7.2.1")
end

if not ( isloaded("libjpeg-turbo/2.0.5") ) then
    load("libjpeg-turbo/2.0.5")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("SQLite/3.33.0") ) then
    load("SQLite/3.33.0")
end

if not ( isloaded("LibTIFF/4.1.0") ) then
    load("LibTIFF/4.1.0")
end

if not ( isloaded("cURL/7.72.0") ) then
    load("cURL/7.72.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBGEOTIFF", root)
setenv("EBVERSIONLIBGEOTIFF", "1.6.0")
setenv("EBDEVELLIBGEOTIFF", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-libgeotiff-1.6.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
