help([==[

Description
===========
StringTie is a fast and highly efficient assembler of RNA-Seq alignments into potential transcripts


More information
================
 - Homepage: https://ccb.jhu.edu/software/stringtie/
]==])

whatis([==[Description: StringTie is a fast and highly efficient assembler of RNA-Seq alignments into potential transcripts]==])
whatis([==[Homepage: https://ccb.jhu.edu/software/stringtie/]==])
whatis([==[URL: https://ccb.jhu.edu/software/stringtie/]==])

local root = "/home/software/EasyBuild/software/StringTie/2.1.4-GCC-9.3.0"

conflict("StringTie")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSTRINGTIE", root)
setenv("EBVERSIONSTRINGTIE", "2.1.4")
setenv("EBDEVELSTRINGTIE", pathJoin(root, "easybuild/Compiler-GCC-9.3.0-StringTie-2.1.4-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
