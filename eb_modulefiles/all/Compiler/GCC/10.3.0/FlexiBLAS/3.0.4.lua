help([==[

Description
===========
FlexiBLAS is a wrapper library that enables the exchange of the BLAS and LAPACK implementation
used by a program without recompiling or relinking it.


More information
================
 - Homepage: https://gitlab.mpi-magdeburg.mpg.de/software/flexiblas-release
]==])

whatis([==[Description: FlexiBLAS is a wrapper library that enables the exchange of the BLAS and LAPACK implementation
used by a program without recompiling or relinking it.]==])
whatis([==[Homepage: https://gitlab.mpi-magdeburg.mpg.de/software/flexiblas-release]==])
whatis([==[URL: https://gitlab.mpi-magdeburg.mpg.de/software/flexiblas-release]==])

local root = "/home/software/EasyBuild/software/FlexiBLAS/3.0.4-GCC-10.3.0"

conflict("FlexiBLAS")

if not ( isloaded("OpenBLAS/0.3.15") ) then
    load("OpenBLAS/0.3.15")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFLEXIBLAS", root)
setenv("EBVERSIONFLEXIBLAS", "3.0.4")
setenv("EBDEVELFLEXIBLAS", pathJoin(root, "easybuild/Compiler-GCC-10.3.0-FlexiBLAS-3.0.4-easybuild-devel"))

-- Built with EasyBuild version 4.4.2
