help([==[

Description
===========
The numactl program allows you to run your application program on specific
 cpu's and memory nodes. It does this by supplying a NUMA memory policy to
 the operating system before running your program. The libnuma library provides
 convenient ways for you to add NUMA memory policies into your own program.


More information
================
 - Homepage: http://oss.sgi.com/projects/libnuma/
]==])

whatis([==[Description: 
 The numactl program allows you to run your application program on specific
 cpu's and memory nodes. It does this by supplying a NUMA memory policy to
 the operating system before running your program. The libnuma library provides
 convenient ways for you to add NUMA memory policies into your own program.
]==])
whatis([==[Homepage: http://oss.sgi.com/projects/libnuma/]==])
whatis([==[URL: http://oss.sgi.com/projects/libnuma/]==])

local root = "/home/software/EasyBuild/software/numactl/2.0.11-GCCcore-7.3.0"

conflict("numactl")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNUMACTL", root)
setenv("EBVERSIONNUMACTL", "2.0.11")
setenv("EBDEVELNUMACTL", pathJoin(root, "easybuild/Compiler-GCCcore-7.3.0-numactl-2.0.11-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
