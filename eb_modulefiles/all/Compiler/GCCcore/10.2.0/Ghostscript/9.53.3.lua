help([==[

Description
===========
Ghostscript is a versatile processor for PostScript data with the ability to render PostScript to
 different targets. It used to be part of the cups printing stack, but is no longer used for that.


More information
================
 - Homepage: https://ghostscript.com
]==])

whatis([==[Description: Ghostscript is a versatile processor for PostScript data with the ability to render PostScript to
 different targets. It used to be part of the cups printing stack, but is no longer used for that.]==])
whatis([==[Homepage: https://ghostscript.com]==])
whatis([==[URL: https://ghostscript.com]==])

local root = "/home/software/EasyBuild/software/Ghostscript/9.53.3-GCCcore-10.2.0"

conflict("Ghostscript")

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("freetype/2.10.3") ) then
    load("freetype/2.10.3")
end

if not ( isloaded("libjpeg-turbo/2.0.5") ) then
    load("libjpeg-turbo/2.0.5")
end

if not ( isloaded("expat/2.2.9") ) then
    load("expat/2.2.9")
end

if not ( isloaded("GLib/2.66.1") ) then
    load("GLib/2.66.1")
end

if not ( isloaded("cairo/1.16.0") ) then
    load("cairo/1.16.0")
end

if not ( isloaded("LibTIFF/4.1.0") ) then
    load("LibTIFF/4.1.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGHOSTSCRIPT", root)
setenv("EBVERSIONGHOSTSCRIPT", "9.53.3")
setenv("EBDEVELGHOSTSCRIPT", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-Ghostscript-9.53.3-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
