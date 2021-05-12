help([==[

Description
===========
Program proj is a standard Unix filter function which converts
    geographic longitude and latitude coordinates into cartesian coordinates

More information
================
 - Homepage: https://download.osgeo.org/proj/
]==])

whatis([==[Description: 
 The GNU Readline library provides a set of functions for use by applications
 that allow users to edit command lines as they are typed in. Both Emacs and
 vi editing modes are available. The Readline library includes additional
 functions to maintain a list of previously-entered command lines, to recall
 and perhaps reedit those lines, and perform csh-like history expansion on
 previous commands.
]==])
whatis([==[Homepage: https://download.osgeo.org/proj/]==])
whatis([==[URL: https://download.osgeo.org/proj/]==])

local root = "/home/software/EasyBuild/software/libreadline/8.0-GCCcore-8.2.0"

conflict("tools/proj")

if not ( isloaded("gcc/8.2.0") ) then
    load("gcc/8.2.0")
end

if not ( isloaded("devel/SQLite/3.27.2") ) then
    load("devel/SQLite/3.27.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))

-- Built with EasyBuild version 4.3.0
