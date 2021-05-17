help([==[

Description
===========
A super-fast templating language that borrows the best ideas from the existing templating languages


More information
================
 - Homepage: http://www.makotemplates.org


Compatible modules
==================
This module is compatible with the following modules, one of each line is required:
* Python/3.7.4 (default), Python/2.7.16
]==])

whatis([==[Description: A super-fast templating language that borrows the best ideas from the existing templating languages]==])
whatis([==[Homepage: http://www.makotemplates.org]==])
whatis([==[URL: http://www.makotemplates.org]==])
whatis([==[Compatible modules: Python/3.7.4 (default), Python/2.7.16]==])

local root = "/home/software/EasyBuild/software/Mako/1.1.0-GCCcore-8.3.0"

conflict("Mako")

if not ( isloaded("Python/3.7.4") ) and not ( isloaded("Python/2.7.16") ) then
    load("Python/3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMAKO", root)
setenv("EBVERSIONMAKO", "1.1.0")
setenv("EBDEVELMAKO", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-Mako-1.1.0-easybuild-devel"))

prepend_path("EBPYTHONPREFIXES", root)
-- Built with EasyBuild version 4.3.4
