help([==[

Description
===========
ORCA is a flexible, efficient and easy-to-use general purpose tool for quantum chemistry
 with specific emphasis on spectroscopic properties of open-shell molecules.
 It features a wide variety of standard quantum chemical methods ranging from semiempirical methods to DFT to single-
 and multireference correlated ab initio methods.
 It can also treat environmental and relativistic effects.


More information
================
 - Homepage: https://orcaforum.kofo.mpg.de
]==])

whatis([==[Description: ORCA is a flexible, efficient and easy-to-use general purpose tool for quantum chemistry
 with specific emphasis on spectroscopic properties of open-shell molecules.
 It features a wide variety of standard quantum chemical methods ranging from semiempirical methods to DFT to single-
 and multireference correlated ab initio methods.
 It can also treat environmental and relativistic effects.]==])
whatis([==[Homepage: https://orcaforum.kofo.mpg.de]==])
whatis([==[URL: https://orcaforum.kofo.mpg.de]==])

local root = "/home/software/EasyBuild/software/ORCA/4.2.1-gompi-2020b"

conflict("ORCA")

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTORCA", root)
setenv("EBVERSIONORCA", "4.2.1")
setenv("EBDEVELORCA", pathJoin(root, "easybuild/MPI-GCC-10.2.0-OpenMPI-4.0.5-ORCA-4.2.1-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.3.4
