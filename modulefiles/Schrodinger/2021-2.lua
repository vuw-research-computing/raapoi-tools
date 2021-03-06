help([==[

More information
================
 - Homepage: https://www.schrodinger.com/
]==])

whatis([==[Description: 
Adds the Schrodinger Suite v 2021-2]==])
whatis([==[Homepage: https://www.schrodinger.com/]==])
whatis([==[URL: https://www.schrodinger.com/]==])

local root = "/home/software/apps/Schrodinger/2021-2"

conflict("Schrodinger")

prepend_path("PATH", pathJoin(root))
prepend_path("PATH", pathJoin(root,"/utilities"))
prepend_path("PATH", pathJoin(root,"/thirdparty/bin/Linux-x86_64/blast/bin"))
prepend_path("PATH", pathJoin(root,"/thirdparty/bin/Linux-x86_64/hmmer/bin"))
prepend_path("PATH", pathJoin(root,"/utilities"))

setenv("schrodinger",root)
setenv("SCHRODINGER", root)