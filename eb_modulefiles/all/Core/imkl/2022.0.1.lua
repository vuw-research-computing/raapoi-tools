help([==[

Description
===========
Intel oneAPI Math Kernel Library


More information
================
 - Homepage: https://software.intel.com/content/www/us/en/develop/tools/oneapi/components/onemkl.html
]==])

whatis([==[Description: Intel oneAPI Math Kernel Library]==])
whatis([==[Homepage: https://software.intel.com/content/www/us/en/develop/tools/oneapi/components/onemkl.html]==])
whatis([==[URL: https://software.intel.com/content/www/us/en/develop/tools/oneapi/components/onemkl.html]==])

local root = "/home/software/EasyBuild/software/imkl/2022.0.1"

conflict("imkl")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "mkl/2022.0.1/include"))
prepend_path("CPATH", pathJoin(root, "mkl/2022.0.1/include/fftw"))
prepend_path("FLEXIBLAS_LIBRARY_PATH", pathJoin(root, "mkl/2022.0.1/lib/intel64/flexiblas"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "compiler/2022.0.1/linux/compiler/lib/intel64_lin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "mkl/2022.0.1/lib/intel64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "compiler/2022.0.1/linux/compiler/lib/intel64_lin"))
prepend_path("LIBRARY_PATH", pathJoin(root, "mkl/2022.0.1/lib/intel64"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "mkl/2022.0.1/lib/pkgconfig"))
setenv("EBROOTIMKL", root)
setenv("EBVERSIONIMKL", "2022.0.1")
setenv("EBDEVELIMKL", pathJoin(root, "easybuild/Core-imkl-2022.0.1-easybuild-devel"))

setenv("MKL_EXAMPLES", "/home/software/EasyBuild/software/imkl/2022.0.1/mkl/2022.0.1/examples")
setenv("MKLROOT", "/home/software/EasyBuild/software/imkl/2022.0.1/mkl/2022.0.1")
-- Built with EasyBuild version 4.5.4
