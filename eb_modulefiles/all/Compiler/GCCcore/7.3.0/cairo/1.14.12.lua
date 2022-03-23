help([==[

Description
===========
Cairo is a 2D graphics library with support for multiple output devices.
 Currently supported output targets include the X Window System (via both Xlib and XCB), Quartz, Win32, image buffers,
 PostScript, PDF, and SVG file output. Experimental backends include OpenGL, BeOS, OS/2, and DirectFB


More information
================
 - Homepage: http://cairographics.org
]==])

whatis([==[Description: Cairo is a 2D graphics library with support for multiple output devices.
 Currently supported output targets include the X Window System (via both Xlib and XCB), Quartz, Win32, image buffers,
 PostScript, PDF, and SVG file output. Experimental backends include OpenGL, BeOS, OS/2, and DirectFB]==])
whatis([==[Homepage: http://cairographics.org]==])
whatis([==[URL: http://cairographics.org]==])

local root = "/home/software/EasyBuild/software/cairo/1.14.12-GCCcore-7.3.0"

conflict("cairo")

if not ( isloaded("bzip2/1.0.6") ) then
    load("bzip2/1.0.6")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("libpng/1.6.34") ) then
    load("libpng/1.6.34")
end

if not ( isloaded("freetype/2.9.1") ) then
    load("freetype/2.9.1")
end

if not ( isloaded("pixman/0.34.0") ) then
    load("pixman/0.34.0")
end

if not ( isloaded("expat/2.2.5") ) then
    load("expat/2.2.5")
end

if not ( isloaded("GLib/2.54.3") ) then
    load("GLib/2.54.3")
end

if not ( isloaded("X11/20180604") ) then
    load("X11/20180604")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCAIRO", root)
setenv("EBVERSIONCAIRO", "1.14.12")
setenv("EBDEVELCAIRO", pathJoin(root, "easybuild/Compiler-GCCcore-7.3.0-cairo-1.14.12-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
