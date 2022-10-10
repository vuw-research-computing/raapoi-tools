help([==[

Description
===========
The PCRE library is a set of functions that implement regular expression
 pattern matching using the same syntax and semantics as Perl 5.


More information
================
 - Homepage: https://www.pcre.org/
]==])

whatis([==[Description: 
 The PCRE library is a set of functions that implement regular expression
 pattern matching using the same syntax and semantics as Perl 5.
]==])
whatis([==[Homepage: https://www.pcre.org/]==])
whatis([==[URL: https://www.pcre.org/]==])

local root = "/home/software/EasyBuild/software/PCRE/8.44-GCCcore-9.3.0"

conflict("PCRE")

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPCRE", root)
setenv("EBVERSIONPCRE", "8.44")
setenv("EBDEVELPCRE", pathJoin(root, "easybuild/Compiler-GCCcore-9.3.0-PCRE-8.44-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
