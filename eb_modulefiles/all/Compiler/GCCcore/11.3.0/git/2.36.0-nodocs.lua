help([==[

Description
===========
Git is a free and open source distributed version control system designed
to handle everything from small to very large projects with speed and efficiency.


More information
================
 - Homepage: https://git-scm.com/
]==])

whatis([==[Description: Git is a free and open source distributed version control system designed
to handle everything from small to very large projects with speed and efficiency.]==])
whatis([==[Homepage: https://git-scm.com/]==])
whatis([==[URL: https://git-scm.com/]==])

local root = "/home/software/EasyBuild/software/git/2.36.0-GCCcore-11.3.0-nodocs"

conflict("git")

if not ( isloaded("cURL/7.83.0") ) then
    load("cURL/7.83.0")
end

if not ( isloaded("expat/2.4.8") ) then
    load("expat/2.4.8")
end

if not ( isloaded("gettext/0.21") ) then
    load("gettext/0.21")
end

if not ( isloaded("Perl/5.34.1") ) then
    load("Perl/5.34.1")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGIT", root)
setenv("EBVERSIONGIT", "2.36.0")
setenv("EBDEVELGIT", pathJoin(root, "easybuild/Compiler-GCCcore-11.3.0-git-2.36.0-nodocs-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
