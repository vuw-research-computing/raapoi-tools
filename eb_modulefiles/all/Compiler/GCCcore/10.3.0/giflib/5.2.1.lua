help([==[

Description
===========
giflib is a library for reading and writing gif images.
It is API and ABI compatible with libungif which was in wide use while
the LZW compression algorithm was patented.


More information
================
 - Homepage: http://giflib.sourceforge.net/
]==])

whatis([==[Description: giflib is a library for reading and writing gif images.
It is API and ABI compatible with libungif which was in wide use while
the LZW compression algorithm was patented.]==])
whatis([==[Homepage: http://giflib.sourceforge.net/]==])
whatis([==[URL: http://giflib.sourceforge.net/]==])

local root = "/home/software/EasyBuild/software/giflib/5.2.1-GCCcore-10.3.0"

conflict("giflib")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGIFLIB", root)
setenv("EBVERSIONGIFLIB", "5.2.1")
setenv("EBDEVELGIFLIB", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-giflib-5.2.1-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
