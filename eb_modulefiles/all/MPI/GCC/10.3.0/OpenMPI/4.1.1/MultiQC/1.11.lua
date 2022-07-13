help([==[

Description
===========
Aggregate results from bioinformatics analyses across many samples into a single 
 report.

 MultiQC searches a given directory for analysis logs and compiles a HTML report. It's a general
 use tool, perfect for summarising the output from numerous bioinformatics tools.


More information
================
 - Homepage: https://multiqc.info


Included extensions
===================
coloredlogs-15.0.1, colormath-3.0.0, commonmark-0.9.1, humanfriendly-10.0,
lzstring-1.0.4, Markdown-3.2.1, multiqc-1.11, rich-10.16.0, spectra-0.0.11
]==])

whatis([==[Description: Aggregate results from bioinformatics analyses across many samples into a single 
 report.

 MultiQC searches a given directory for analysis logs and compiles a HTML report. It's a general
 use tool, perfect for summarising the output from numerous bioinformatics tools.]==])
whatis([==[Homepage: https://multiqc.info]==])
whatis([==[URL: https://multiqc.info]==])
whatis([==[Extensions: coloredlogs-15.0.1, colormath-3.0.0, commonmark-0.9.1, humanfriendly-10.0, lzstring-1.0.4, Markdown-3.2.1, multiqc-1.11, rich-10.16.0, spectra-0.0.11]==])

local root = "/home/software/EasyBuild/software/MultiQC/1.11-foss-2021a"

conflict("MultiQC")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.9") ) then
    load("FFTW/3.3.9")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("Python/3.9.5") ) then
    load("Python/3.9.5")
end

if not ( isloaded("matplotlib/3.4.2") ) then
    load("matplotlib/3.4.2")
end

if not ( isloaded("PyYAML/5.4.1") ) then
    load("PyYAML/5.4.1")
end

if not ( isloaded("networkx/2.5.1") ) then
    load("networkx/2.5.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMULTIQC", root)
setenv("EBVERSIONMULTIQC", "1.11")
setenv("EBDEVELMULTIQC", pathJoin(root, "easybuild/MPI-GCC-10.3.0-OpenMPI-4.1.1-MultiQC-1.11-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTMULTIQC", "colormath-3.0.0,spectra-0.0.11,Markdown-3.2.1,lzstring-1.0.4,coloredlogs-15.0.1,rich-10.16.0,commonmark-0.9.1,humanfriendly-10.0,multiqc-1.11")
