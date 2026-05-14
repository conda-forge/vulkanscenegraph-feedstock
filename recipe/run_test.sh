#!/bin/bash

set -exo pipefail

cmake tests \
    ${CMAKE_ARGS} \
    -G Ninja \
    -B tests/build \
    -DBUILD_SHARED_LIBS=ON \
    -DCMAKE_BUILD_TYPE=Release

cmake --build tests/build --parallel
export LD_LIBRARY_PATH="${PREFIX}/lib:${LD_LIBRARY_PATH:-}"
export DYLD_FALLBACK_LIBRARY_PATH="${PREFIX}/lib:${DYLD_FALLBACK_LIBRARY_PATH:-}"
ctest --test-dir tests/build --output-on-failure
