help([==[

Description
===========
SQLite: SQL Database Engine in a C Library


More information
================
 - Homepage: https://www.sqlite.org/
]==])

whatis([==[Description: SQLite: SQL Database Engine in a C Library]==])
whatis([==[Homepage: https://www.sqlite.org/]==])
whatis([==[URL: https://www.sqlite.org/]==])

local root = "/home/software/EasyBuild/software/SQLite/3.27.2-GCCcore-8.2.0"

conflict("devel/SQLite")

if not ( isloaded("gcc/8.2.0") ) then
    load("gcc/8.2.0")
end

if not ( isloaded("lib/libreadline/8.0-GCCcore-8.2.0") ) then
    load("lib/libreadline/8.0-GCCcore-8.2.0")
end

if not ( isloaded("lang/Tcl/8.6.9-GCCcore-8.2.0") ) then
    load("lang/Tcl/8.6.9-GCCcore-8.2.0")
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
setenv("EBVERSIONSQLITE", "3.27.2")
setenv("EBDEVELSQLITE", pathJoin(root, "easybuild/devel-SQLite-3.27.2-GCCcore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.0
