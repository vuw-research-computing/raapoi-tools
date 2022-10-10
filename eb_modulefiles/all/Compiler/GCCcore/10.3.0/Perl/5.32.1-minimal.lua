help([==[

Description
===========
Larry Wall's Practical Extraction and Report Language

This is a minimal build without any modules. Should only be used for build dependencies.


More information
================
 - Homepage: https://www.perl.org/
]==])

whatis([==[Description: Larry Wall's Practical Extraction and Report Language

This is a minimal build without any modules. Should only be used for build dependencies.
]==])
whatis([==[Homepage: https://www.perl.org/]==])
whatis([==[URL: https://www.perl.org/]==])

local root = "/home/software/EasyBuild/software/Perl/5.32.1-GCCcore-10.3.0-minimal"

conflict("Perl")

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPERL", root)
setenv("EBVERSIONPERL", "5.32.1")
setenv("EBDEVELPERL", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-Perl-5.32.1-minimal-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
