help([==[

Description
===========
Trinity represents a novel method for the efficient and robust de novo reconstruction
 of transcriptomes from RNA-Seq data. Trinity combines three independent software modules: Inchworm,
 Chrysalis, and Butterfly, applied sequentially to process large volumes of RNA-Seq reads.


More information
================
 - Homepage: https://trinityrnaseq.github.io
]==])

whatis([==[Description: Trinity represents a novel method for the efficient and robust de novo reconstruction
 of transcriptomes from RNA-Seq data. Trinity combines three independent software modules: Inchworm,
 Chrysalis, and Butterfly, applied sequentially to process large volumes of RNA-Seq reads.]==])
whatis([==[Homepage: https://trinityrnaseq.github.io]==])
whatis([==[URL: https://trinityrnaseq.github.io]==])

local root = "/home/software/EasyBuild/software/Trinity/2.10.0-foss-2019b-Python-3.7.4"

conflict("Trinity")

if not ( isloaded("OpenBLAS/0.3.7") ) then
    load("OpenBLAS/0.3.7")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.0.2") ) then
    load("ScaLAPACK/2.0.2")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("ant/1.10.7-Java-11") ) then
    load("ant/1.10.7-Java-11")
end

if not ( isloaded("Perl/5.30.0") ) then
    load("Perl/5.30.0")
end

if not ( isloaded("Python/3.7.4") ) then
    load("Python/3.7.4")
end

if not ( isloaded("SciPy-bundle/2019.10-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-Python-3.7.4")
end

if not ( isloaded("Bowtie2/2.3.5.1") ) then
    load("Bowtie2/2.3.5.1")
end

if not ( isloaded("HTSlib/1.10.2") ) then
    load("HTSlib/1.10.2")
end

if not ( isloaded("Jellyfish/2.3.0") ) then
    load("Jellyfish/2.3.0")
end

if not ( isloaded("kallisto/0.46.1") ) then
    load("kallisto/0.46.1")
end

if not ( isloaded("ncurses/6.1") ) then
    load("ncurses/6.1")
end

if not ( isloaded("Salmon/1.1.0") ) then
    load("Salmon/1.1.0")
end

if not ( isloaded("SAMtools/1.10") ) then
    load("SAMtools/1.10")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "trinityrnaseq-v2.10.0"))
prepend_path("TRINITY_HOME", pathJoin(root, "trinityrnaseq-v2.10.0"))
setenv("EBROOTTRINITY", root)
setenv("EBVERSIONTRINITY", "2.10.0")
setenv("EBDEVELTRINITY", pathJoin(root, "easybuild/MPI-GCC-8.3.0-OpenMPI-3.1.4-Trinity-2.10.0-Python-3.7.4-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
