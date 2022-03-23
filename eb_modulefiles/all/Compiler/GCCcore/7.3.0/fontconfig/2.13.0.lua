help([==[

Description
===========
Fontconfig is a library designed to provide system-wide font configuration,
 customization and application access.


More information
================
 - Homepage: http://www.freedesktop.org/software/fontconfig
]==])

whatis([==[Description: 
 Fontconfig is a library designed to provide system-wide font configuration,
 customization and application access.
]==])
whatis([==[Homepage: http://www.freedesktop.org/software/fontconfig]==])
whatis([==[URL: http://www.freedesktop.org/software/fontconfig]==])

local root = "/home/software/EasyBuild/software/fontconfig/2.13.0-GCCcore-7.3.0"

conflict("fontconfig")

if not ( isloaded("expat/2.2.5") ) then
    load("expat/2.2.5")
end

if not ( isloaded("freetype/2.9.1") ) then
    load("freetype/2.9.1")
end

if not ( isloaded("util-linux/2.32") ) then
    load("util-linux/2.32")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFONTCONFIG", root)
setenv("EBVERSIONFONTCONFIG", "2.13.0")
setenv("EBDEVELFONTCONFIG", pathJoin(root, "easybuild/Compiler-GCCcore-7.3.0-fontconfig-2.13.0-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
