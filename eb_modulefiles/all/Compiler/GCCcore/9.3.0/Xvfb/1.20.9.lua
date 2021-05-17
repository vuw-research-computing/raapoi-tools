help([==[

Description
===========
Xvfb is an X server that can run on machines with no display hardware and no physical input devices.
 It emulates a dumb framebuffer using virtual memory.


More information
================
 - Homepage: https://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml
]==])

whatis([==[Description: Xvfb is an X server that can run on machines with no display hardware and no physical input devices.
 It emulates a dumb framebuffer using virtual memory.]==])
whatis([==[Homepage: https://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml]==])
whatis([==[URL: https://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml]==])

local root = "/home/software/EasyBuild/software/Xvfb/1.20.9-GCCcore-9.3.0"

conflict("Xvfb")

if not ( isloaded("X11/20200222") ) then
    load("X11/20200222")
end

if not ( isloaded("pixman/0.38.4") ) then
    load("pixman/0.38.4")
end

if not ( isloaded("libdrm/2.4.100") ) then
    load("libdrm/2.4.100")
end

if not ( isloaded("Mesa/20.0.2") ) then
    load("Mesa/20.0.2")
end

if not ( isloaded("nettle/3.6") ) then
    load("nettle/3.6")
end

if not ( isloaded("libunwind/1.3.1") ) then
    load("libunwind/1.3.1")
end

if not ( isloaded("XZ/5.2.5") ) then
    load("XZ/5.2.5")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTXVFB", root)
setenv("EBVERSIONXVFB", "1.20.9")
setenv("EBDEVELXVFB", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-Xvfb-1.20.9-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
