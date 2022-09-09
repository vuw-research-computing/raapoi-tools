help([==[

Description
===========
The libevent API provides a mechanism to execute a callback function when
 a specific event occurs on a file descriptor or after a timeout has been
 reached.  Furthermore, libevent also support callbacks due to signals or
 regular timeouts.


More information
================
 - Homepage: https://libevent.org/
]==])

whatis([==[Description: 
 The libevent API provides a mechanism to execute a callback function when
 a specific event occurs on a file descriptor or after a timeout has been
 reached.  Furthermore, libevent also support callbacks due to signals or
 regular timeouts.
]==])
whatis([==[Homepage: https://libevent.org/]==])
whatis([==[URL: https://libevent.org/]==])

local root = "/home/software/EasyBuild/software/libevent/2.1.11-GCCcore-8.3.0"

conflict("libevent")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBEVENT", root)
setenv("EBVERSIONLIBEVENT", "2.1.11")
setenv("EBDEVELLIBEVENT", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-libevent-2.1.11-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
