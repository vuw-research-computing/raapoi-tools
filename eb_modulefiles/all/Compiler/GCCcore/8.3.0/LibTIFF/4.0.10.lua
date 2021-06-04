help([==[

Description
===========
tiff: Library and tools for reading and writing TIFF data files


More information
================
 - Homepage: https://libtiff.gitlab.io/libtiff/
]==])

whatis([==[Description: tiff: Library and tools for reading and writing TIFF data files]==])
whatis([==[Homepage: https://libtiff.gitlab.io/libtiff/]==])
whatis([==[URL: https://libtiff.gitlab.io/libtiff/]==])

local root = "/home/software/EasyBuild/software/LibTIFF/4.0.10-GCCcore-8.3.0"

conflict("LibTIFF")

if not ( isloaded("libjpeg-turbo/2.0.3") ) then
    load("libjpeg-turbo/2.0.3")
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
setenv("EBVERSIONLIBTIFF", "4.0.10")
setenv("EBDEVELLIBTIFF", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-LibTIFF-4.0.10-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
