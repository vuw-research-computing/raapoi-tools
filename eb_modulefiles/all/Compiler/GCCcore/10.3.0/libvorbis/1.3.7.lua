help([==[

Description
===========
Ogg Vorbis is a fully open, non-proprietary, patent-and-royalty-free, general-purpose compressed
audio format


More information
================
 - Homepage: https://xiph.org/vorbis/
]==])

whatis([==[Description: Ogg Vorbis is a fully open, non-proprietary, patent-and-royalty-free, general-purpose compressed
audio format]==])
whatis([==[Homepage: https://xiph.org/vorbis/]==])
whatis([==[URL: https://xiph.org/vorbis/]==])

local root = "/home/software/EasyBuild/software/libvorbis/1.3.7-GCCcore-10.3.0"

conflict("libvorbis")

if not ( isloaded("libogg/1.3.4") ) then
    load("libogg/1.3.4")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBVORBIS", root)
setenv("EBVERSIONLIBVORBIS", "1.3.7")
setenv("EBDEVELLIBVORBIS", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-libvorbis-1.3.7-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
