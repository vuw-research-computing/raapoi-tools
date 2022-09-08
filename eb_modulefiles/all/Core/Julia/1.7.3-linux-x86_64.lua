help([==[

Description
===========
Julia is a high-level, high-performance dynamic programming language for numerical computing


More information
================
 - Homepage: https://julialang.org
]==])

whatis([==[Description: Julia is a high-level, high-performance dynamic programming language for numerical computing]==])
whatis([==[Homepage: https://julialang.org]==])
whatis([==[URL: https://julialang.org]==])

local root = "/home/software/EasyBuild/software/Julia/1.7.3-linux-x86_64"

conflict("Julia")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJULIA", root)
setenv("EBVERSIONJULIA", "1.7.3")
setenv("EBDEVELJULIA", pathJoin(root, "easybuild/Core-Julia-1.7.3-linux-x86_64-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
