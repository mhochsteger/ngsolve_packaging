echo "building"
export
mkdir build
cd build
#   -DCMAKE_PREFIX_PATH=/home/matthias/miniconda3 \
#   -DCMAKE_PREFIX_PATH=$SYS_PREFIX \
cmake $SRC_DIR \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_SYSTEM_PREFIX_PATH=$SYS_PREFIX \
  -DUSE_GUI=ON \
  -DUSE_JPEG=ON \
  -DTCL_LIBRARY=$SYS_PREFIX/lib/libtcl8.5.so \
  -DTK_LIBRARY=$SYS_PREFIX/lib/libtk8.5.so \
  -DNG_INSTALL_DIR_LIB=lib/netgen \
  -DUSE_CCACHE=ON
#   -DCMAKE_THREAD_LIBS_INIT=pthread \
#  -DCMAKE_CXX_FLAGS="-I/usr/include" \
#  -DCMAKE_C_FLAGS="-I/usr/include"
# cmake $SRC_DIR -DCMAKE_INSTALL_PREFIX=$PREFIX -DUSE_CCACHE=ON -DCMAKE_PREFIX_PATH=/home/matthias/miniconda3
make -j
make install

