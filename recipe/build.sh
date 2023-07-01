#!/bin/env bash

export IGRAPH_CMAKE_EXTRA_ARGS="
    -GNinja
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_FLAGS=\"${CFLAGS}\" \
    -DCMAKE_CPP_FLAGS=\"${CPPFLAGS}\" \
    -DCMAKE_CXX_FLAGS=\"${CXXFLAGS}\" \
    -DCMAKE_POSITION_INDEPENDENT_CODE=on \
    -DF2C_EXTERNAL_ARITH_HEADER=${F2C_EXTERNAL_ARITH_HEADER} \
    -DIGRAPH_USE_INTERNAL_BLAS=0 \
    -DIGRAPH_USE_INTERNAL_LAPACK=0 \
    -DIGRAPH_USE_INTERNAL_ARPACK=0 \
    -DIGRAPH_USE_INTERNAL_GLPK=0 \
    -DIGRAPH_USE_INTERNAL_CXSPARSE=0 \
    -DIGRAPH_USE_INTERNAL_GMP=0 \
    -DBUILD_SHARED_LIBS=off \
    -DIGRAPH_ENABLE_LTO=${ENABLE_LTO} \
    -DIGRAPH_ENABLE_TLS=1 \
    -DBLAS_LIBRARIES=\"${PREFIX}/lib/libblas${SHLIB_EXT}\" \
    -DLAPACK_LIBRARIES=\"${PREFIX}/lib/liblapack${SHLIB_EXT}\"
    "

${PYTHON} -m pip install --no-deps --ignore-installed . -vvv
