help([==[

Description
===========
A super-fast templating language that borrows the best ideas from the existing templating languages


More information
================
 - Homepage: https://www.makotemplates.org


Compatible modules
==================
This module is compatible with the following modules, one of each line is required:
* Python/3.8.6 (default), Python/2.7.18
]==])

whatis([==[Description: A super-fast templating language that borrows the best ideas from the existing templating languages]==])
whatis([==[Homepage: https://www.makotemplates.org]==])
whatis([==[URL: https://www.makotemplates.org]==])
whatis([==[Compatible modules: Python/3.8.6 (default), Python/2.7.18]==])

local root = "/home/software/EasyBuild/software/Mako/1.1.3-GCCcore-10.2.0"

conflict("Mako")

if not ( isloaded("Python/3.8.6") ) and not ( isloaded("Python/2.7.18") ) then
    load("Python/3.8.6")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMAKO", root)
setenv("EBVERSIONMAKO", "1.1.3")
setenv("EBDEVELMAKO", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-Mako-1.1.3-easybuild-devel"))

prepend_path("EBPYTHONPREFIXES", root)
-- Built with EasyBuild version 4.3.5.dev0
