help([==[

Description
===========
The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
 redesigned for distributed memory MIMD parallel computers.


More information
================
 - Homepage: http://www.netlib.org/scalapack/
]==])

whatis([==[Description: The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
 redesigned for distributed memory MIMD parallel computers.]==])
whatis([==[Homepage: http://www.netlib.org/scalapack/]==])
whatis([==[URL: http://www.netlib.org/scalapack/]==])

local root = "/home/software/EasyBuild/software/ScaLAPACK/2.0.2-gompi-2019b"

conflict("ScaLAPACK")

if not ( isloaded("OpenBLAS/0.3.7") ) then
    load("OpenBLAS/0.3.7")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSCALAPACK", root)
setenv("EBVERSIONSCALAPACK", "2.0.2")
setenv("EBDEVELSCALAPACK", pathJoin(root, "easybuild/MPI-GCC-8.3.0-OpenMPI-3.1.4-ScaLAPACK-2.0.2-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
