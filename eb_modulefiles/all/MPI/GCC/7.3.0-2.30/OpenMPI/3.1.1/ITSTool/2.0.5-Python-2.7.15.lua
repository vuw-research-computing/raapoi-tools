help([==[

Description
===========
ITS Tool allows you to translate your XML documents with PO files, using rules from the
 W3C Internationalization Tag Set (ITS) to determine what to translate and how to separate it into PO file messages.


More information
================
 - Homepage: https://itstool.org/
]==])

whatis([==[Description: ITS Tool allows you to translate your XML documents with PO files, using rules from the
 W3C Internationalization Tag Set (ITS) to determine what to translate and how to separate it into PO file messages.]==])
whatis([==[Homepage: https://itstool.org/]==])
whatis([==[URL: https://itstool.org/]==])

local root = "/home/software/EasyBuild/software/ITSTool/2.0.5-foss-2018b-Python-2.7.15"

conflict("ITSTool")

if not ( isloaded("OpenBLAS/0.3.1") ) then
    load("OpenBLAS/0.3.1")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2-OpenBLAS-0.3.1") ) then
    load("ScaLAPACK/2.0.2-OpenBLAS-0.3.1")
end

if not ( isloaded("Python/2.7.15") ) then
    load("Python/2.7.15")
end

if not ( isloaded("libxml2-python/2.9.8-Python-2.7.15") ) then
    load("libxml2-python/2.9.8-Python-2.7.15")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTITSTOOL", root)
setenv("EBVERSIONITSTOOL", "2.0.5")
setenv("EBDEVELITSTOOL", pathJoin(root, "easybuild/MPI-GCC-7.3.0-2.30-OpenMPI-3.1.1-ITSTool-2.0.5-Python-2.7.15-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
