help([==[

Description
===========
p7zip is a quick port of 7z.exe and 7za.exe (CLI version of
7zip) for Unix. 7-Zip is a file archiver with highest compression ratio.


More information
================
 - Homepage: https://github.com/jinfeihan57/p7zip/
]==])

whatis([==[Description: p7zip is a quick port of 7z.exe and 7za.exe (CLI version of
7zip) for Unix. 7-Zip is a file archiver with highest compression ratio.]==])
whatis([==[Homepage: https://github.com/jinfeihan57/p7zip/]==])
whatis([==[URL: https://github.com/jinfeihan57/p7zip/]==])

local root = "/home/software/EasyBuild/software/p7zip/17.03-GCCcore-10.2.0"

conflict("p7zip")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTP7ZIP", root)
setenv("EBVERSIONP7ZIP", "17.03")
setenv("EBDEVELP7ZIP", pathJoin(root, "easybuild/Compiler-GCCcore-10.2.0-p7zip-17.03-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
