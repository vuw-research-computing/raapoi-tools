help([==[

Description
===========
FFTW interfaces using Intel oneAPI Math Kernel Library


More information
================
 - Homepage: https://software.intel.com/content/www/us/en/develop/tools/oneapi/components/onemkl.html
]==])

whatis([==[Description: FFTW interfaces using Intel oneAPI Math Kernel Library]==])
whatis([==[Homepage: https://software.intel.com/content/www/us/en/develop/tools/oneapi/components/onemkl.html]==])
whatis([==[URL: https://software.intel.com/content/www/us/en/develop/tools/oneapi/components/onemkl.html]==])

local root = "/home/software/EasyBuild/software/imkl-FFTW/2022.0.1-iimpi-2022.00"

conflict("imkl-FFTW")

if not ( isloaded("imkl/2022.0.1") ) then
    load("imkl/2022.0.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTIMKLMINFFTW", root)
setenv("EBVERSIONIMKLMINFFTW", "2022.0.1")
setenv("EBDEVELIMKLMINFFTW", pathJoin(root, "easybuild/MPI-intel-2022.0.1-impi-2021.5.0-imkl-FFTW-2022.0.1-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
