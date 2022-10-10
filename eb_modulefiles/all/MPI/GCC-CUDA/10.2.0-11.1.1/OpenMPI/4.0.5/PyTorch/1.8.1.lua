help([==[

Description
===========
Tensors and Dynamic neural networks in Python with strong GPU acceleration.
PyTorch is a deep learning framework that puts Python first.


More information
================
 - Homepage: https://pytorch.org/
]==])

whatis([==[Description: Tensors and Dynamic neural networks in Python with strong GPU acceleration.
PyTorch is a deep learning framework that puts Python first.]==])
whatis([==[Homepage: https://pytorch.org/]==])
whatis([==[URL: https://pytorch.org/]==])

local root = "/home/software/EasyBuild/software/PyTorch/1.8.1-fosscuda-2020b"

conflict("PyTorch")

if not ( isloaded("OpenBLAS/0.3.12") ) then
    load("OpenBLAS/0.3.12")
end

if not ( isloaded("FFTW/3.3.8") ) then
    load("FFTW/3.3.8")
end

if not ( isloaded("ScaLAPACK/2.1.0") ) then
    load("ScaLAPACK/2.1.0")
end

if not ( isloaded("Ninja/1.10.1") ) then
    load("Ninja/1.10.1")
end

if not ( isloaded("Python/3.8.6") ) then
    load("Python/3.8.6")
end

if not ( isloaded("protobuf/3.14.0") ) then
    load("protobuf/3.14.0")
end

if not ( isloaded("protobuf-python/3.14.0") ) then
    load("protobuf-python/3.14.0")
end

if not ( isloaded("pybind11/2.6.0") ) then
    load("pybind11/2.6.0")
end

if not ( isloaded("SciPy-bundle/2020.11") ) then
    load("SciPy-bundle/2020.11")
end

if not ( isloaded("typing-extensions/3.7.4.3") ) then
    load("typing-extensions/3.7.4.3")
end

if not ( isloaded("PyYAML/5.3.1") ) then
    load("PyYAML/5.3.1")
end

if not ( isloaded("MPFR/4.1.0") ) then
    load("MPFR/4.1.0")
end

if not ( isloaded("GMP/6.2.0") ) then
    load("GMP/6.2.0")
end

if not ( isloaded("FFmpeg/4.3.1") ) then
    load("FFmpeg/4.3.1")
end

if not ( isloaded("Pillow/8.0.1") ) then
    load("Pillow/8.0.1")
end

if not ( isloaded("cuDNN/8.0.4.30-CUDA-11.1.1") ) then
    load("cuDNN/8.0.4.30-CUDA-11.1.1")
end

if not ( isloaded("magma/2.5.4") ) then
    load("magma/2.5.4")
end

if not ( isloaded("NCCL/2.8.3-CUDA-11.1.1") ) then
    load("NCCL/2.8.3-CUDA-11.1.1")
end

prepend_path("CMAKE_PREFIX_PATH", pathJoin(root, "lib/python3.8/site-packages/torch"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.8/site-packages/torch/lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTORCH", root)
setenv("EBVERSIONPYTORCH", "1.8.1")
setenv("EBDEVELPYTORCH", pathJoin(root, "easybuild/MPI-GCC-CUDA-10.2.0-11.1.1-OpenMPI-4.0.5-PyTorch-1.8.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.4.2
