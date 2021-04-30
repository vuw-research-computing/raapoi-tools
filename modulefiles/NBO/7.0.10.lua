help([==[

Description
===========
The Natural Bond Orbital (NBO) program


More information
================
 - Homepage: https://nbo6.chem.wisc.edu/
]==])

whatis([==[Description: 
A discovery tool for chemical insights from complex wavefunctions.
]==])
whatis([==[Homepage: https://nbo6.chem.wisc.edu/]==])
whatis([==[URL: https://nbo6.chem.wisc.edu/]==])

local root = "/home/software/apps/nbo/7.0.10"

conflict("NBO")

prepend_path("PATH", pathJoin(root,"/bin"))
setenv("NBOBIN",pathJoin(root,"/bin")