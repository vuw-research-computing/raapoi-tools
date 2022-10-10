help([==[

Description
===========
Nettle is a cryptographic library that is designed to fit easily
 in more or less any context: In crypto toolkits for object-oriented
 languages (C++, Python, Pike, ...), in applications like LSH or GNUPG,
 or even in kernel space.


More information
================
 - Homepage: https://www.lysator.liu.se/~nisse/nettle/
]==])

whatis([==[Description: Nettle is a cryptographic library that is designed to fit easily
 in more or less any context: In crypto toolkits for object-oriented
 languages (C++, Python, Pike, ...), in applications like LSH or GNUPG,
 or even in kernel space.]==])
whatis([==[Homepage: https://www.lysator.liu.se/~nisse/nettle/]==])
whatis([==[URL: https://www.lysator.liu.se/~nisse/nettle/]==])

local root = "/home/software/EasyBuild/software/nettle/3.6-GCCcore-10.2.0"

conflict("nettle")

if not ( isloaded("GMP/6.2.0") ) then
    load("GMP/6.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNETTLE", root)
setenv("EBVERSIONNETTLE", "3.6")
setenv("EBDEVELNETTLE", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-nettle-3.6-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
