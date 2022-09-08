help([==[

Description
===========
Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.


More information
================
 - Homepage: https://python.org/
]==])

whatis([==[Description: Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])

local root = "/home/software/EasyBuild/software/Python/2.7.15-GCCcore-7.3.0-bare"

conflict("Python")

if not ( isloaded("binutils/2.30") ) then
    load("binutils/2.30")
end

if not ( isloaded("bzip2/1.0.6") ) then
    load("bzip2/1.0.6")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("libreadline/7.0") ) then
    load("libreadline/7.0")
end

if not ( isloaded("ncurses/6.1") ) then
    load("ncurses/6.1")
end

if not ( isloaded("SQLite/3.24.0") ) then
    load("SQLite/3.24.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPYTHON", root)
setenv("EBVERSIONPYTHON", "2.7.15")
setenv("EBDEVELPYTHON", pathJoin(root, "easybuild/Compiler-GCCcore-7.3.0-Python-2.7.15-bare-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "easybuild/python"))
-- Built with EasyBuild version 4.4.1
