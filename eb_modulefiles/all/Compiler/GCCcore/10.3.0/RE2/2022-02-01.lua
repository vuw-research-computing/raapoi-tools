help([==[

Description
===========
RE2 is a fast, safe, thread-friendly alternative to backtracking regular
expression engines like those used in PCRE, Perl, and Python. It is a C++
library.


More information
================
 - Homepage: https://github.com/google/re2
]==])

whatis([==[Description: 
RE2 is a fast, safe, thread-friendly alternative to backtracking regular
expression engines like those used in PCRE, Perl, and Python. It is a C++
library. ]==])
whatis([==[Homepage: https://github.com/google/re2]==])
whatis([==[URL: https://github.com/google/re2]==])

local root = "/home/software/EasyBuild/software/RE2/2022-02-01-GCCcore-10.3.0"

conflict("RE2")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTRE2", root)
setenv("EBVERSIONRE2", "2022-02-01")
setenv("EBDEVELRE2", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-RE2-2022-02-01-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
