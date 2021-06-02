help([==[

Description
===========
The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
redesigned for distributed memory MIMD parallel computers.


More information
================
 - Homepage: https://www.netlib.org/scalapack/
]==])

whatis([==[Description: The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
redesigned for distributed memory MIMD parallel computers.]==])
whatis([==[Homepage: https://www.netlib.org/scalapack/]==])
whatis([==[URL: https://www.netlib.org/scalapack/]==])

local root = "/home/software/EasyBuild/software/ScaLAPACK/2.2-gompi-2020a-amd"

conflict("ScaLAPACK")

if not ( isloaded("BLIS/2.2-amd") ) then
    load("BLIS/2.2-amd")
end

if not ( isloaded("libFLAME/2.2-amd") ) then
    load("libFLAME/2.2-amd")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTSCALAPACK", root)
setenv("EBVERSIONSCALAPACK", "2.2")
setenv("EBDEVELSCALAPACK", pathJoin(root, "easybuild/MPI-GCC-9.3.0-OpenMPI-4.0.3-ScaLAPACK-2.2-amd-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
