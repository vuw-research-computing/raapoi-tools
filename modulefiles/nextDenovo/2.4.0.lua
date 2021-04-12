help([==[

More information
================
 - Homepage: https://github.com/Nextomics/NextDenovo
]==])

whatis([==[Description: 
NextDenovo is a string graph-based de novo assembler for long read
]==])
whatis([==[Homepage: https://github.com/Nextomics/NextDenovo]==])
whatis([==[URL: https://github.com/Nextomics/NextDenovo]==])

local root = "/home/software/apps/nextDenovo/2.4.0"

conflict("nextDenovo")
always_load("python/3.8.1")
always_load("xz/4.999.9beta")

prepend_path("PATH", pathJoin(root))
prepend_path("PATH", pathJoin(root,"/bin"))
prepend_path("LD_LIBRARY_PATH",pathJoin(root,"/lib"))
prepend_path("PYTHONPATH",pathJoin(root,"/pythondeps/lib/python3.8/site-packages"))
prepend_path("MANPATH",pathJoin(root,"/doc"))