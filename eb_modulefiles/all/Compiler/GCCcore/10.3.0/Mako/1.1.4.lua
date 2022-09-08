help([==[

Description
===========
A super-fast templating language that borrows the best ideas from the existing templating languages


More information
================
 - Homepage: https://www.makotemplates.org
]==])

whatis([==[Description: A super-fast templating language that borrows the best ideas from the existing templating languages]==])
whatis([==[Homepage: https://www.makotemplates.org]==])
whatis([==[URL: https://www.makotemplates.org]==])

local root = "/home/software/EasyBuild/software/Mako/1.1.4-GCCcore-10.3.0"

conflict("Mako")

if not ( isloaded("Python/3.9.5") ) then
    load("Python/3.9.5")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMAKO", root)
setenv("EBVERSIONMAKO", "1.1.4")
setenv("EBDEVELMAKO", pathJoin(root, "easybuild/Compiler-GCCcore-10.3.0-Mako-1.1.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.3
