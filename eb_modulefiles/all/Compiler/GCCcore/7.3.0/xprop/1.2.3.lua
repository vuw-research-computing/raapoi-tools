help([==[

Description
===========
The xprop utility is for displaying window and font properties in an X server.
 One window or font is selected using the command line arguments or possibly
 in the case of a window, by clicking on the desired window. A list of
 properties is then given, possibly with formatting information.


More information
================
 - Homepage: http://www.x.org/wiki/
]==])

whatis([==[Description: The xprop utility is for displaying window and font properties in an X server.
 One window or font is selected using the command line arguments or possibly
 in the case of a window, by clicking on the desired window. A list of
 properties is then given, possibly with formatting information.]==])
whatis([==[Homepage: http://www.x.org/wiki/]==])
whatis([==[URL: http://www.x.org/wiki/]==])

local root = "/home/software/EasyBuild/software/xprop/1.2.3-GCCcore-7.3.0"

conflict("xprop")

if not ( isloaded("X11/20180604") ) then
    load("X11/20180604")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTXPROP", root)
setenv("EBVERSIONXPROP", "1.2.3")
setenv("EBDEVELXPROP", pathJoin(root, "easybuild/Compiler-GCCcore-7.3.0-xprop-1.2.3-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
