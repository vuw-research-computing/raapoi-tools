help([==[

Description
===========
Intel(R) Threading Building Blocks (Intel(R) TBB) lets you easily write parallel C++ programs that
 take full advantage of multicore performance, that are portable, composable and have future-proof scalability.


More information
================
 - Homepage: https://github.com/oneapi-src/oneTBB
]==])

whatis([==[Description: Intel(R) Threading Building Blocks (Intel(R) TBB) lets you easily write parallel C++ programs that
 take full advantage of multicore performance, that are portable, composable and have future-proof scalability.]==])
whatis([==[Homepage: https://github.com/oneapi-src/oneTBB]==])
whatis([==[URL: https://github.com/oneapi-src/oneTBB]==])

local root = "/home/software/EasyBuild/software/tbb/2019_U9-GCCcore-8.3.0"

conflict("tbb")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTTBB", root)
setenv("EBVERSIONTBB", "2019_U9")
setenv("EBDEVELTBB", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-tbb-2019_U9-easybuild-devel"))

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "build/linux_intel64_gcc_cc8.3.0_libc2.17_kernel5.4.143_release"))
prepend_path("LIBRARY_PATH", pathJoin(root, "build/linux_intel64_gcc_cc8.3.0_libc2.17_kernel5.4.143_release"))
prepend_path("CPATH", pathJoin(root, "include"))
setenv("TBBROOT", "/home/software/EasyBuild/software/tbb/2019_U9-GCCcore-8.3.0/")
-- Built with EasyBuild version 4.4.1
