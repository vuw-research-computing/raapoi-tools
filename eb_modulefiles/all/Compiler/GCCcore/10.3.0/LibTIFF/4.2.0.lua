help([==[

Description
===========
tiff: Library and tools for reading and writing TIFF data files


More information
================
 - Homepage: https://libtiff.maptools.org/
]==])

whatis([==[Description: tiff: Library and tools for reading and writing TIFF data files]==])
whatis([==[Homepage: https://libtiff.maptools.org/]==])
whatis([==[URL: https://libtiff.maptools.org/]==])

local root = "/home/software/EasyBuild/software/LibTIFF/4.2.0-GCCcore-10.3.0"

conflict("LibTIFF")

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("libjpeg-turbo/2.0.6") ) then
    load("libjpeg-turbo/2.0.6")
end

if not ( isloaded("XZ/5.2.5") ) then
    load("XZ/5.2.5")
end

if not ( isloaded("jbigkit/2.1") ) then
    load("jbigkit/2.1")
end

if not ( isloaded("zstd/1.4.9") ) then
    load("zstd/1.4.9")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBTIFF", root)
setenv("EBVERSIONLIBTIFF", "4.2.0")
setenv("EBDEVELLIBTIFF", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-LibTIFF-4.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
