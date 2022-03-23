help([==[

Description
===========
This is a Perl extension interface to James Clark's XML parser, expat.


More information
================
 - Homepage: http://search.cpan.org/~toddr/XML-Parser-2.41/
]==])

whatis([==[Description: This is a Perl extension interface to James Clark's XML parser, expat.]==])
whatis([==[Homepage: http://search.cpan.org/~toddr/XML-Parser-2.41/]==])
whatis([==[URL: http://search.cpan.org/~toddr/XML-Parser-2.41/]==])

local root = "/home/software/EasyBuild/software/XML-Parser/2.44_01-GCCcore-7.3.0-Perl-5.28.0"

conflict("XML-Parser")

if not ( isloaded("Perl/5.28.0") ) then
    load("Perl/5.28.0")
end

if not ( isloaded("expat/2.2.5") ) then
    load("expat/2.2.5")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.28.0/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.28.0"))
setenv("EBROOTXMLMINPARSER", root)
setenv("EBVERSIONXMLMINPARSER", "2.44_01")
setenv("EBDEVELXMLMINPARSER", pathJoin(root, "easybuild/Compiler-GCCcore-7.3.0-XML-Parser-2.44_01-Perl-5.28.0-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
