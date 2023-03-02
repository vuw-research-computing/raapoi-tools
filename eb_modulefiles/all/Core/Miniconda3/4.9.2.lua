help([==[

Description
===========
Miniconda is a free minimal installer for conda. It is a small,
 bootstrap version of Anaconda that includes only conda, Python, the packages they
 depend on, and a small number of other useful packages.


More information
================
 - Homepage: https://docs.conda.io/en/latest/miniconda.html
]==])

whatis([==[Description: Miniconda is a free minimal installer for conda. It is a small,
 bootstrap version of Anaconda that includes only conda, Python, the packages they
 depend on, and a small number of other useful packages.]==])
whatis([==[Homepage: https://docs.conda.io/en/latest/miniconda.html]==])
whatis([==[URL: https://docs.conda.io/en/latest/miniconda.html]==])

local root = "/home/software/EasyBuild/software/Miniconda3/4.9.2"

conflict("Miniconda3")

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMINICONDA3", root)
setenv("EBVERSIONMINICONDA3", "4.9.2")
setenv("EBDEVELMINICONDA3", pathJoin(root, "easybuild/Core-Miniconda3-4.9.2-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.3.4
