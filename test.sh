#!/bin/bash

set -x

mkdir build_on
cd build_on
cmake -DUSE_SYSTEM_LIB=ON ..
make
touch ../deps/some_system_lib.h
make
cd ..

mkdir build_off
cd build_off
cmake -DUSE_SYSTEM_LIB=OFF ..
make
touch ../deps/some_system_lib.h
make
cd ..
