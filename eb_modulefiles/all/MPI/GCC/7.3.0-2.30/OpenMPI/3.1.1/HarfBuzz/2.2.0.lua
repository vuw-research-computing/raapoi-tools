help([==[

Description
===========
HarfBuzz is an OpenType text shaping engine.


More information
================
 - Homepage: https://www.freedesktop.org/wiki/Software/HarfBuzz
]==])

whatis([==[Description: HarfBuzz is an OpenType text shaping engine.]==])
whatis([==[Homepage: https://www.freedesktop.org/wiki/Software/HarfBuzz]==])
whatis([==[URL: https://www.freedesktop.org/wiki/Software/HarfBuzz]==])

local root = "/home/software/EasyBuild/software/HarfBuzz/2.2.0-foss-2018b"

conflict("HarfBuzz")

if not ( isloaded("OpenBLAS/0.3.1") ) then
    load("OpenBLAS/0.3.1")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2-OpenBLAS-0.3.1") ) then
    load("ScaLAPACK/2.0.2-OpenBLAS-0.3.1")
end

if not ( isloaded("GLib/2.54.3") ) then
    load("GLib/2.54.3")
end

if not ( isloaded("cairo/1.14.12") ) then
    load("cairo/1.14.12")
end

if not ( isloaded("freetype/2.9.1") ) then
    load("freetype/2.9.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTHARFBUZZ", root)
setenv("EBVERSIONHARFBUZZ", "2.2.0")
setenv("EBDEVELHARFBUZZ", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-HarfBuzz-2.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
