help([==[

Description
===========
Process Management for Exascale Environments
PMI Exascale (PMIx) represents an attempt to
provide an extended version of the PMI standard specifically designed
to support clusters up to and including exascale sizes. The overall
objective of the project is not to branch the existing pseudo-standard
definitions - in fact, PMIx fully supports both of the existing PMI-1
and PMI-2 APIs - but rather to (a) augment and extend those APIs to
eliminate some current restrictions that impact scalability, and (b)
provide a reference implementation of the PMI-server that demonstrates
the desired level of scalability.


More information
================
 - Homepage: https://pmix.org/
]==])

whatis([==[Description: Process Management for Exascale Environments
PMI Exascale (PMIx) represents an attempt to
provide an extended version of the PMI standard specifically designed
to support clusters up to and including exascale sizes. The overall
objective of the project is not to branch the existing pseudo-standard
definitions - in fact, PMIx fully supports both of the existing PMI-1
and PMI-2 APIs - but rather to (a) augment and extend those APIs to
eliminate some current restrictions that impact scalability, and (b)
provide a reference implementation of the PMI-server that demonstrates
the desired level of scalability.
]==])
whatis([==[Homepage: https://pmix.org/]==])
whatis([==[URL: https://pmix.org/]==])

local root = "/home/software/EasyBuild/software/PMIx/3.0.2-GCCcore-8.3.0"

conflict("PMIx")

if not ( isloaded("libevent/2.1.11") ) then
    load("libevent/2.1.11")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("hwloc/1.11.12") ) then
    load("hwloc/1.11.12")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPMIX", root)
setenv("EBVERSIONPMIX", "3.0.2")
setenv("EBDEVELPMIX", pathJoin(root, "easybuild/Compiler-GCCcore-8.3.0-PMIx-3.0.2-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
