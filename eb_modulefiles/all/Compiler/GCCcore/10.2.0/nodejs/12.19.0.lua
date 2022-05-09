help([==[

Description
===========
Node.js is a platform built on Chrome's JavaScript runtime
 for easily building fast, scalable network applications. Node.js uses an
 event-driven, non-blocking I/O model that makes it lightweight and efficient,
 perfect for data-intensive real-time applications that run across distributed devices.


More information
================
 - Homepage: https://nodejs.org
]==])

whatis([==[Description: Node.js is a platform built on Chrome's JavaScript runtime
 for easily building fast, scalable network applications. Node.js uses an
 event-driven, non-blocking I/O model that makes it lightweight and efficient,
 perfect for data-intensive real-time applications that run across distributed devices.]==])
whatis([==[Homepage: https://nodejs.org]==])
whatis([==[URL: https://nodejs.org]==])

local root = "/home/software/EasyBuild/software/nodejs/12.19.0-GCCcore-10.2.0"

conflict("nodejs")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNODEJS", root)
setenv("EBVERSIONNODEJS", "12.19.0")
setenv("EBDEVELNODEJS", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-nodejs-12.19.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
