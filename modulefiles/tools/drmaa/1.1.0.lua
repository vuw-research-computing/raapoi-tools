help([==[

Description
===========
A super simple and lightweight parallel task engine using drmaa

More information
================
 - Homepage: https://github.com/moold/ParallelTask
]==])

whatis([==[Description: 
old xz version - mostly for nextDenovo which depends on this old version
]==])
whatis([==[Homepage: https://github.com/moold/ParallelTask]==])
whatis([==[URL: https://github.com/moold/ParallelTask]==])

local root = "/home/software/apps/tools/drmaa/1.1.0"

conflict("drmaa")
always_load("python/3.8.1")
always_load("gcc/8.2.0")

prepend_path("CMAKE_PREFIX_PATH", pathJoin(root,"/slurm-drmaa"))
prepend_path("PATH", pathJoin(root))
prepend_path("LD_LIBRARY_PATH", pathJoin(root,"/slurm-drmaa","/lib"))
prepend_path("PYTHONPATH",pathJoin(root,"/pythondeps/lib/python3.8/site-packages"))
prepend_path("DRMAA_LIBRARY_PATH", pathJoin(root,"/slurm-drmaa","/lib/libdrmaa.so.1"))