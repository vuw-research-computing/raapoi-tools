help([==[

Description
===========
SeqKit - a cross-platform and ultrafast toolkit for FASTA/Q file manipulation


More information
================
 - Homepage: https://bioinf.shenwei.me/seqkit/
]==])

whatis([==[Description: SeqKit - a cross-platform and ultrafast toolkit for FASTA/Q file manipulation]==])
whatis([==[Homepage: https://bioinf.shenwei.me/seqkit/]==])
whatis([==[URL: https://bioinf.shenwei.me/seqkit/]==])

local root = "/home/software/EasyBuild/software/SeqKit/2.1.0"

conflict("SeqKit")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSEQKIT", root)
setenv("EBVERSIONSEQKIT", "2.1.0")
setenv("EBDEVELSEQKIT", pathJoin(root, "easybuild/Core-SeqKit-2.1.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
