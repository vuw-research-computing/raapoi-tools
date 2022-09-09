help([==[

Description
===========
Tk is an open source, cross-platform widget toolchain that provides a library of basic elements for
 building a graphical user interface (GUI) in many different programming languages.


More information
================
 - Homepage: https://www.tcl.tk/
]==])

whatis([==[Description: Tk is an open source, cross-platform widget toolchain that provides a library of basic elements for
 building a graphical user interface (GUI) in many different programming languages.]==])
whatis([==[Homepage: https://www.tcl.tk/]==])
whatis([==[URL: https://www.tcl.tk/]==])

local root = "/home/software/EasyBuild/software/Tk/8.6.10-GCCcore-10.2.0"

conflict("Tk")

if not ( isloaded("Tcl/8.6.10") ) then
    load("Tcl/8.6.10")
end

if not ( isloaded("X11/20201008") ) then
    load("X11/20201008")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTTK", root)
setenv("EBVERSIONTK", "8.6.10")
setenv("EBDEVELTK", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-Tk-8.6.10-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
