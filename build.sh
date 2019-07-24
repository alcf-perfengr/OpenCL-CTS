#!/bin/sh

export TOP=$(pwd)
git clone https://github.com/KhronosGroup/OpenCL-Headers.git
cd OpenCL-Headers
ln -s CL OpenCL
cd ..
git clone https://github.com/KhronosGroup/OpenCL-ICD-Loader.git
cd ${TOP}/OpenCL-ICD-Loader
mkdir build
cd build
cmake -DOPENCL_ICD_LOADER_HEADERS_DIR=${TOP}/OpenCL-Headers/ ..
make
cd ${TOP}
ls -l
#mkdir build
#cd build
cmake -DCL_INCLUDE_DIR=${TOP}/OpenCL-Headers -DCL_LIB_DIR=${TOP}/OpenCL-ICD-Loader/build -DCMAKE_RUNTIME_OUTPUT_DIRECTORY=./bin -DOPENCL_LIBRARIES="-lOpenCL -lpthread"
make -j2