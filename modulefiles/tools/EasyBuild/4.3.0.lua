help([==[

Description
===========
EasyBuild is a software build and installation framework
written in Python that allows you to install software in a structured,
repeatable and robust way.


More information
================
 - Homepage: http://easybuilders.github.com/easybuild/
]==])

whatis([==[Description: EasyBuild is a software build and installation framework
written in Python that allows you to install software in a structured,
repeatable and robust way.]==])
whatis([==[Homepage: http://easybuilders.github.com/easybuild/]==])
whatis([==[URL: http://easybuilders.github.com/easybuild/]==])

local root = "/home/software/EasyBuild/software/EasyBuild/4.3.0"

conflict("EasyBuild")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTEASYBUILD", root)
setenv("EBVERSIONEASYBUILD", "4.3.0")
setenv("EBDEVELEASYBUILD", pathJoin(root, "easybuild/EasyBuild-4.3.0-easybuild-devel"))
setenv("EASYBUILD_CONFIGFILES","/home/software/EasyBuild/configfiles/raapoi_defaults.cfg")

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
setenv("EB_PYTHON", "/bin/python3")
-- Built with EasyBuild version 4.3.0
