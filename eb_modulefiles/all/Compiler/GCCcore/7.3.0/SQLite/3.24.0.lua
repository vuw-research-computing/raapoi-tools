help([==[

Description
===========
SQLite: SQL Database Engine in a C Library


More information
================
 - Homepage: http://www.sqlite.org/
]==])

whatis([==[Description: SQLite: SQL Database Engine in a C Library]==])
whatis([==[Homepage: http://www.sqlite.org/]==])
whatis([==[URL: http://www.sqlite.org/]==])

local root = "/home/software/EasyBuild/software/SQLite/3.24.0-GCCcore-7.3.0"

conflict("SQLite")

if not ( isloaded("libreadline/7.0") ) then
    load("libreadline/7.0")
end

if not ( isloaded("Tcl/8.6.8") ) then
    load("Tcl/8.6.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSQLITE", root)
setenv("EBVERSIONSQLITE", "3.24.0")
setenv("EBDEVELSQLITE", pathJoin(root, "easybuild/Compiler-GCCcore-7.3.0-SQLite-3.24.0-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
