#!/bin/bash

set -e

(
  rm -rf build
  mkdir build
  cd build
  cmake -DCMAKE_BUILD_TYPE=DEBUG ..
  make -j `nproc`
)

echo "cgdb build/tcpdump"
