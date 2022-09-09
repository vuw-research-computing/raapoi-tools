help([==[

Description
===========
FLAC stands for Free Lossless Audio Codec, an audio format similar to MP3, but lossless, meaning
that audio is compressed in FLAC without any loss in quality.


More information
================
 - Homepage: https://xiph.org/flac/
]==])

whatis([==[Description: FLAC stands for Free Lossless Audio Codec, an audio format similar to MP3, but lossless, meaning
that audio is compressed in FLAC without any loss in quality.]==])
whatis([==[Homepage: https://xiph.org/flac/]==])
whatis([==[URL: https://xiph.org/flac/]==])

local root = "/home/software/EasyBuild/software/FLAC/1.3.3-GCCcore-10.2.0"

conflict("FLAC")

if not ( isloaded("libogg/1.3.4") ) then
    load("libogg/1.3.4")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFLAC", root)
setenv("EBVERSIONFLAC", "1.3.3")
setenv("EBDEVELFLAC", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-FLAC-1.3.3-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
