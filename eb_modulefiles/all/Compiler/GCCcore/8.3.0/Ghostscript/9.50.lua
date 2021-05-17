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

local root = "/home/software/EasyBuild/software/Ghostscript/9.50-GCCcore-8.3.0"

conflict("Ghostscript")

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("freetype/2.10.1") ) then
    load("freetype/2.10.1")
end

if not ( isloaded("libjpeg-turbo/2.0.3") ) then
    load("libjpeg-turbo/2.0.3")
end

if not ( isloaded("expat/2.2.7") ) then
    load("expat/2.2.7")
end

if not ( isloaded("GLib/2.62.0") ) then
    load("GLib/2.62.0")
end

if not ( isloaded("cairo/1.16.0") ) then
    load("cairo/1.16.0")
end

if not ( isloaded("LibTIFF/4.0.10") ) then
    load("LibTIFF/4.0.10")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGHOSTSCRIPT", root)
setenv("EBVERSIONGHOSTSCRIPT", "9.50")
setenv("EBDEVELGHOSTSCRIPT", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-Ghostscript-9.50-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
