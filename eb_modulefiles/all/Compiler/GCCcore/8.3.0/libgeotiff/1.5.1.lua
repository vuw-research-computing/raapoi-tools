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

local root = "/home/software/EasyBuild/software/libgeotiff/1.5.1-GCCcore-8.3.0"

conflict("libgeotiff")

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("LibTIFF/4.0.10") ) then
    load("LibTIFF/4.0.10")
end

if not ( isloaded("PROJ/6.2.1") ) then
    load("PROJ/6.2.1")
end

if not ( isloaded("libjpeg-turbo/2.0.3") ) then
    load("libjpeg-turbo/2.0.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBGEOTIFF", root)
setenv("EBVERSIONLIBGEOTIFF", "1.5.1")
setenv("EBDEVELLIBGEOTIFF", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-libgeotiff-1.5.1-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
