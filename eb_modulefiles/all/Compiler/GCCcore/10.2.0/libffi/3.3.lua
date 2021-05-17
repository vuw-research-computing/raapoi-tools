help([==[

Description
===========
The libffi library provides a portable, high level programming interface to
 various calling conventions. This allows a programmer to call any function
 specified by a call interface description at run-time.


More information
================
 - Homepage: https://sourceware.org/libffi/
]==])

whatis([==[Description: The libffi library provides a portable, high level programming interface to
 various calling conventions. This allows a programmer to call any function
 specified by a call interface description at run-time.]==])
whatis([==[Homepage: https://sourceware.org/libffi/]==])
whatis([==[URL: https://sourceware.org/libffi/]==])

local root = "/home/software/EasyBuild/software/libffi/3.3-GCCcore-10.2.0"

conflict("libffi")

prepend_path("CMAKE_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBFFI", root)
setenv("EBVERSIONLIBFFI", "3.3")
setenv("EBDEVELLIBFFI", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-libffi-3.3-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
