help([==[

Description
===========
Intel C/C++ and Fortran compilers, alongside Intel MPI.


More information
================
 - Homepage: https://software.intel.com/parallel-studio-xe
]==])

whatis([==[Description: Intel C/C++ and Fortran compilers, alongside Intel MPI.]==])
whatis([==[Homepage: https://software.intel.com/parallel-studio-xe]==])
whatis([==[URL: https://software.intel.com/parallel-studio-xe]==])

local root = "/home/software/EasyBuild/software/iimpi/2022.00"

conflict("iimpi")

if not ( isloaded("intel-compilers/2022.0.1") ) then
    load("intel-compilers/2022.0.1")
end

if not ( isloaded("impi/2021.5.0") ) then
    load("impi/2021.5.0")
end

setenv("EBROOTIIMPI", root)
setenv("EBVERSIONIIMPI", "2022.00")
setenv("EBDEVELIIMPI", pathJoin(root, "easybuild/Core-iimpi-2022.00-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
