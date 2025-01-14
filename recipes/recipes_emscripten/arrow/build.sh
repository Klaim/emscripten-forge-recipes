
cp wasm-driver.cpp cpp/

mkdir build
cd build

# Configure step
cmake ${CMAKE_ARGS} \
    -DCMAKE_PREFIX_PATH:PATH=${PREFIX} \
    -DCMAKE_INSTALL_PREFIX:PATH=${PREFIX} \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DCMAKE_BUILD_TYPE=Release \
    -DARROW_SIMD_LEVEL=NONE \
    -DARROW_RUNTIME_SIMD_LEVEL=NONE \
    -DARROW_BUILD_TESTS=OFF \
    -DARROW_ENABLE_TIMING_TESTS=OFF \
    -DARROW_BUILD_SHARED=OFF \
    -S ../cpp -B ./


# Build step
emmake make install -j12
