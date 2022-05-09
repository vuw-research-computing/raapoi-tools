help([==[

Description
===========
Libsndfile is a C library for reading and writing files containing sampled sound
 (such as MS Windows WAV and the Apple/SGI AIFF format) through one standard library interface.


More information
================
 - Homepage: http://www.mega-nerd.com/libsndfile
]==])

whatis([==[Description: Libsndfile is a C library for reading and writing files containing sampled sound
 (such as MS Windows WAV and the Apple/SGI AIFF format) through one standard library interface.]==])
whatis([==[Homepage: http://www.mega-nerd.com/libsndfile]==])
whatis([==[URL: http://www.mega-nerd.com/libsndfile]==])

local root = "/home/software/EasyBuild/software/libsndfile/1.0.28-GCCcore-10.2.0"

conflict("libsndfile")

if not ( isloaded("FLAC/1.3.3") ) then
    load("FLAC/1.3.3")
end

if not ( isloaded("libvorbis/1.3.7") ) then
    load("libvorbis/1.3.7")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBSNDFILE", root)
setenv("EBVERSIONLIBSNDFILE", "1.0.28")
setenv("EBDEVELLIBSNDFILE", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-libsndfile-1.0.28-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
