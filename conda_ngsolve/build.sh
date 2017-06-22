echo "building"
export
mkdir build
cd build
cmake $SRC_DIR \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DNETGEN_DIR=$PREFIX \
  -DCMAKE_SYSTEM_PREFIX_PATH=$SYS_PREFIX \
  -DUSE_CCACHE=ON
make -j
make install

