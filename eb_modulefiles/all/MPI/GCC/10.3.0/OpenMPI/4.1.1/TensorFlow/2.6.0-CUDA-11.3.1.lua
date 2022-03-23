help([==[

Description
===========
An open-source software library for Machine Intelligence


More information
================
 - Homepage: https://www.tensorflow.org/


Included extensions
===================
absl-py-0.13.0, astor-0.8.1, astunparse-1.6.3, cachetools-4.2.2, clang-5.0,
dill-0.3.3, gast-0.4.0, google-auth-1.35.0, google-auth-oauthlib-0.4.5,
google-pasta-0.2.0, grpcio-1.39.0, gviz-api-1.9.0, keras-2.6.0,
Keras_Preprocessing-1.1.2, Markdown-3.3.4, oauthlib-3.1.1, opt_einsum-3.3.0,
portpicker-1.4.0, pyasn1-modules-0.2.8, requests-oauthlib-1.3.0, rsa-4.7.2,
tblib-1.7.0, tensorboard-2.6.0, tensorboard_data_server-0.6.1,
tensorboard_plugin_profile-2.5.0, tensorboard_plugin_wit-1.8.0,
TensorFlow-2.6.0, tensorflow_estimator-2.6.0, termcolor-1.1.0, Werkzeug-2.0.1,
wrapt-1.12.1
]==])

whatis([==[Description: An open-source software library for Machine Intelligence]==])
whatis([==[Homepage: https://www.tensorflow.org/]==])
whatis([==[URL: https://www.tensorflow.org/]==])
whatis([==[Extensions: absl-py-0.13.0, astor-0.8.1, astunparse-1.6.3, cachetools-4.2.2, clang-5.0, dill-0.3.3, gast-0.4.0, google-auth-1.35.0, google-auth-oauthlib-0.4.5, google-pasta-0.2.0, grpcio-1.39.0, gviz-api-1.9.0, keras-2.6.0, Keras_Preprocessing-1.1.2, Markdown-3.3.4, oauthlib-3.1.1, opt_einsum-3.3.0, portpicker-1.4.0, pyasn1-modules-0.2.8, requests-oauthlib-1.3.0, rsa-4.7.2, tblib-1.7.0, tensorboard-2.6.0, tensorboard_data_server-0.6.1, tensorboard_plugin_profile-2.5.0, tensorboard_plugin_wit-1.8.0, TensorFlow-2.6.0, tensorflow_estimator-2.6.0, termcolor-1.1.0, Werkzeug-2.0.1, wrapt-1.12.1]==])

local root = "/home/software/EasyBuild/software/TensorFlow/2.6.0-foss-2021a-CUDA-11.3.1"

conflict("TensorFlow")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.9") ) then
    load("FFTW/3.3.9")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("CUDA/11.3.1") ) then
    load("CUDA/11.3.1")
end

if not ( isloaded("cuDNN/8.2.1.32-CUDA-11.3.1") ) then
    load("cuDNN/8.2.1.32-CUDA-11.3.1")
end

if not ( isloaded("NCCL/2.10.3-CUDA-11.3.1") ) then
    load("NCCL/2.10.3-CUDA-11.3.1")
end

if not ( isloaded("Python/3.9.5") ) then
    load("Python/3.9.5")
end

if not ( isloaded("h5py/3.2.1") ) then
    load("h5py/3.2.1")
end

if not ( isloaded("cURL/7.76.0") ) then
    load("cURL/7.76.0")
end

if not ( isloaded("double-conversion/3.1.5") ) then
    load("double-conversion/3.1.5")
end

if not ( isloaded("flatbuffers/2.0.0") ) then
    load("flatbuffers/2.0.0")
end

if not ( isloaded("giflib/5.2.1") ) then
    load("giflib/5.2.1")
end

if not ( isloaded("ICU/69.1") ) then
    load("ICU/69.1")
end

if not ( isloaded("JsonCpp/1.9.4") ) then
    load("JsonCpp/1.9.4")
end

if not ( isloaded("libjpeg-turbo/2.0.6") ) then
    load("libjpeg-turbo/2.0.6")
end

if not ( isloaded("LMDB/0.9.28") ) then
    load("LMDB/0.9.28")
end

if not ( isloaded("NASM/2.15.05") ) then
    load("NASM/2.15.05")
end

if not ( isloaded("nsync/1.24.0") ) then
    load("nsync/1.24.0")
end

if not ( isloaded("SQLite/3.35.4") ) then
    load("SQLite/3.35.4")
end

if not ( isloaded("protobuf-python/3.17.3") ) then
    load("protobuf-python/3.17.3")
end

if not ( isloaded("flatbuffers-python/2.0") ) then
    load("flatbuffers-python/2.0")
end

if not ( isloaded("typing-extensions/3.10.0.0") ) then
    load("typing-extensions/3.10.0.0")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("snappy/1.1.8") ) then
    load("snappy/1.1.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTENSORFLOW", root)
setenv("EBVERSIONTENSORFLOW", "2.6.0")
setenv("EBDEVELTENSORFLOW", pathJoin(root, "easybuild/MPI-GCC-10.3.0-OpenMPI-4.1.1-TensorFlow-2.6.0-CUDA-11.3.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.4.2
setenv("EBEXTSLISTTENSORFLOW", "Markdown-3.3.4,pyasn1-modules-0.2.8,rsa-4.7.2,cachetools-4.2.2,google-auth-1.35.0,oauthlib-3.1.1,requests-oauthlib-1.3.0,google-auth-oauthlib-0.4.5,Werkzeug-2.0.1,absl-py-0.13.0,astunparse-1.6.3,grpcio-1.39.0,gviz-api-1.9.0,tensorboard_data_server-0.6.1,tensorboard-2.6.0,tensorboard_plugin_wit-1.8.0,tensorboard_plugin_profile-2.5.0,google-pasta-0.2.0,termcolor-1.1.0,tensorflow_estimator-2.6.0,astor-0.8.1,gast-0.4.0,clang-5.0,opt_einsum-3.3.0,wrapt-1.12.1,Keras_Preprocessing-1.1.2,dill-0.3.3,tblib-1.7.0,portpicker-1.4.0,keras-2.6.0,TensorFlow-2.6.0")
