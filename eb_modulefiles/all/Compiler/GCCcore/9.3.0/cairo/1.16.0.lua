help([==[

Description
===========
Cairo is a 2D graphics library with support for multiple output devices.
 Currently supported output targets include the X Window System (via both Xlib and XCB), Quartz, Win32, image buffers,
 PostScript, PDF, and SVG file output. Experimental backends include OpenGL, BeOS, OS/2, and DirectFB


More information
================
 - Homepage: https://cairographics.org
]==])

whatis([==[Description: Cairo is a 2D graphics library with support for multiple output devices.
 Currently supported output targets include the X Window System (via both Xlib and XCB), Quartz, Win32, image buffers,
 PostScript, PDF, and SVG file output. Experimental backends include OpenGL, BeOS, OS/2, and DirectFB]==])
whatis([==[Homepage: https://cairographics.org]==])
whatis([==[URL: https://cairographics.org]==])

local root = "/home/software/EasyBuild/software/cairo/1.16.0-GCCcore-9.3.0"

conflict("cairo")

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("freetype/2.10.1") ) then
    load("freetype/2.10.1")
end

if not ( isloaded("pixman/0.38.4") ) then
    load("pixman/0.38.4")
end

if not ( isloaded("expat/2.2.9") ) then
    load("expat/2.2.9")
end

if not ( isloaded("GLib/2.64.1") ) then
    load("GLib/2.64.1")
end

if not ( isloaded("X11/20200222") ) then
    load("X11/20200222")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCAIRO", root)
setenv("EBVERSIONCAIRO", "1.16.0")
setenv("EBDEVELCAIRO", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-cairo-1.16.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
