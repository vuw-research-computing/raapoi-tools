help([==[

Description
===========
RMBlast is a RepeatMasker compatible version of the standard NCBI BLAST suite. The primary
 difference between this distribution and the NCBI distribution is the addition of a new program 'rmblastn'
 for use with RepeatMasker and RepeatModeler.


More information
================
 - Homepage: https://www.repeatmasker.org/RMBlast.html
]==])

whatis([==[Description: RMBlast is a RepeatMasker compatible version of the standard NCBI BLAST suite. The primary
 difference between this distribution and the NCBI distribution is the addition of a new program 'rmblastn'
 for use with RepeatMasker and RepeatModeler.]==])
whatis([==[Homepage: https://www.repeatmasker.org/RMBlast.html]==])
whatis([==[URL: https://www.repeatmasker.org/RMBlast.html]==])

local root = "/home/software/EasyBuild/software/RMBlast/2.11.0-gompi-2020b"

conflict("RMBlast")

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("PCRE/8.44") ) then
    load("PCRE/8.44")
end

if not ( isloaded("Boost/1.74.0") ) then
    load("Boost/1.74.0")
end

if not ( isloaded("GMP/6.2.0") ) then
    load("GMP/6.2.0")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("libjpeg-turbo/2.0.5") ) then
    load("libjpeg-turbo/2.0.5")
end

if not ( isloaded("LMDB/0.9.24") ) then
    load("LMDB/0.9.24")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRMBLAST", root)
setenv("EBVERSIONRMBLAST", "2.11.0")
setenv("EBDEVELRMBLAST", pathJoin(root, "easybuild/MPI-GCC-10.2.0-OpenMPI-4.0.5-RMBlast-2.11.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
