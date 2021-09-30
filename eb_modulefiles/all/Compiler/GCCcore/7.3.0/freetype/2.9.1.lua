help([==[

Description
===========
FreeType 2 is a software font engine that is designed to be small, efficient,
 highly customizable, and portable while capable of producing high-quality
 output (glyph images). It can be used in graphics libraries, display servers,
 font conversion tools, text image generation tools, and many other products
 as well.


More information
================
 - Homepage: https://freetype.org
]==])

whatis([==[Description: 
 FreeType 2 is a software font engine that is designed to be small, efficient,
 highly customizable, and portable while capable of producing high-quality
 output (glyph images). It can be used in graphics libraries, display servers,
 font conversion tools, text image generation tools, and many other products
 as well.
]==])
whatis([==[Homepage: https://freetype.org]==])
whatis([==[URL: https://freetype.org]==])

local root = "/home/software/EasyBuild/software/freetype/2.9.1-GCCcore-7.3.0"

conflict("freetype")

if not ( isloaded("bzip2/1.0.6") ) then
    load("bzip2/1.0.6")
end

if not ( isloaded("libpng/1.6.34") ) then
    load("libpng/1.6.34")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include/freetype2"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFREETYPE", root)
setenv("EBVERSIONFREETYPE", "2.9.1")
setenv("EBDEVELFREETYPE", pathJoin(root, "easybuild/Compiler-GCCcore-7.3.0-freetype-2.9.1-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
