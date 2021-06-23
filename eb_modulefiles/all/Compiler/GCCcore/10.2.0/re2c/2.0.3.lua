help([==[

Description
===========
re2c is a free and open-source lexer generator for C and C++. Its main goal is generating
fast lexers: at least as fast as their reasonably optimized hand-coded counterparts. Instead of using
traditional table-driven approach, re2c encodes the generated finite state automata directly in the form
of conditional jumps and comparisons.


More information
================
 - Homepage: https://re2c.org/
]==])

whatis([==[Description: re2c is a free and open-source lexer generator for C and C++. Its main goal is generating
fast lexers: at least as fast as their reasonably optimized hand-coded counterparts. Instead of using
traditional table-driven approach, re2c encodes the generated finite state automata directly in the form
of conditional jumps and comparisons.]==])
whatis([==[Homepage: https://re2c.org/]==])
whatis([==[URL: https://re2c.org/]==])

local root = "/home/software/EasyBuild/software/re2c/2.0.3-GCCcore-10.2.0"

conflict("re2c")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTRE2C", root)
setenv("EBVERSIONRE2C", "2.0.3")
setenv("EBDEVELRE2C", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-re2c-2.0.3-easybuild-devel"))

-- Built with EasyBuild version 4.3.5.dev0
