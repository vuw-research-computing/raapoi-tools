help([==[

Description
===========
Intel C, C++ & Fortran compilers (classic and oneAPI)


More information
================
 - Homepage: https://software.intel.com/content/www/us/en/develop/tools/oneapi/hpc-toolkit.html
]==])

whatis([==[Description: Intel C, C++ & Fortran compilers (classic and oneAPI)]==])
whatis([==[Homepage: https://software.intel.com/content/www/us/en/develop/tools/oneapi/hpc-toolkit.html]==])
whatis([==[URL: https://software.intel.com/content/www/us/en/develop/tools/oneapi/hpc-toolkit.html]==])

local root = "/home/software/EasyBuild/software/intel-compilers/2022.0.1"

conflict("intel-compilers")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("binutils/2.37") ) then
    load("binutils/2.37")
end
prepend_path("MODULEPATH", "/home/software/tools/eb_modulefiles/all/Compiler/intel/2022.0.1")

prepend_path("CPATH", pathJoin(root, "tbb/2021.5.0/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "compiler/2022.0.1/linux/lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "compiler/2022.0.1/linux/lib/x64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "compiler/2022.0.1/linux/compiler/lib/intel64_lin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "tbb/2021.5.0/lib/intel64/gcc4.8"))
prepend_path("LIBRARY_PATH", pathJoin(root, "compiler/2022.0.1/linux/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "compiler/2022.0.1/linux/lib/x64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "compiler/2022.0.1/linux/compiler/lib/intel64_lin"))
prepend_path("LIBRARY_PATH", pathJoin(root, "tbb/2021.5.0/lib/intel64/gcc4.8"))
prepend_path("MANPATH", pathJoin(root, "compiler/2022.0.1/documentation/en/man/common"))
prepend_path("OCL_ICD_FILENAMES", pathJoin(root, "compiler/2022.0.1/linux/lib/x64/libintelocl.so"))
prepend_path("PATH", pathJoin(root, "compiler/2022.0.1/linux/bin"))
prepend_path("PATH", pathJoin(root, "compiler/2022.0.1/linux/bin/intel64"))
prepend_path("TBBROOT", pathJoin(root, "tbb/2021.5.0"))
setenv("EBROOTINTELMINCOMPILERS", root)
setenv("EBVERSIONINTELMINCOMPILERS", "2022.0.1")
setenv("EBDEVELINTELMINCOMPILERS", pathJoin(root, "easybuild/Core-intel-compilers-2022.0.1-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
