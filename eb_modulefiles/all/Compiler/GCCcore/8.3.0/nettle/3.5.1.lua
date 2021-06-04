help([==[

Description
===========
Nettle is a cryptographic library that is designed to fit easily
 in more or less any context: In crypto toolkits for object-oriented
 languages (C++, Python, Pike, ...), in applications like LSH or GNUPG,
 or even in kernel space.


More information
================
 - Homepage: http://www.lysator.liu.se/~nisse/nettle/
]==])

whatis([==[Description: Nettle is a cryptographic library that is designed to fit easily
 in more or less any context: In crypto toolkits for object-oriented
 languages (C++, Python, Pike, ...), in applications like LSH or GNUPG,
 or even in kernel space.]==])
whatis([==[Homepage: http://www.lysator.liu.se/~nisse/nettle/]==])
whatis([==[URL: http://www.lysator.liu.se/~nisse/nettle/]==])

local root = "/home/software/EasyBuild/software/nettle/3.5.1-GCCcore-8.3.0"

conflict("nettle")

if not ( isloaded("GMP/6.1.2") ) then
    load("GMP/6.1.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNETTLE", root)
setenv("EBVERSIONNETTLE", "3.5.1")
setenv("EBDEVELNETTLE", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-nettle-3.5.1-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
