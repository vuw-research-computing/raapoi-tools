help([==[

Description
===========
Datasets, Transforms and Models specific to Computer Vision


More information
================
 - Homepage: https://github.com/pytorch/vision
]==])

whatis([==[Description:  Datasets, Transforms and Models specific to Computer Vision]==])
whatis([==[Homepage: https://github.com/pytorch/vision]==])
whatis([==[URL: https://github.com/pytorch/vision]==])

local root = "/home/software/EasyBuild/software/torchvision/0.9.1-fosscuda-2020b-PyTorch-1.8.1"

conflict("torchvision")

if not ( isloaded("OpenBLAS/0.3.12") ) then
    load("OpenBLAS/0.3.12")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.1.0") ) then
    load("ScaLAPACK/2.1.0")
end

if not ( isloaded("Python/3.8.6") ) then
    load("Python/3.8.6")
end

if not ( isloaded("Pillow-SIMD/7.1.2") ) then
    load("Pillow-SIMD/7.1.2")
end

if not ( isloaded("PyTorch/1.8.1") ) then
    load("PyTorch/1.8.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTTORCHVISION", root)
setenv("EBVERSIONTORCHVISION", "0.9.1")
setenv("EBDEVELTORCHVISION", pathJoin(root, "easybuild/MPI-GCC-CUDA-10.2.0-11.1.1-OpenMPI-4.0.5-torchvision-0.9.1-PyTorch-1.8.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.4.2
