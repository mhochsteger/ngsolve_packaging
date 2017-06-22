mkdir build
cd build
set

cmake %SRC_DIR% ^
  -G"%CMAKE_GENERATOR%" ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DUSE_OCC=OFF ^
  -DCMAKE_INSTALL_PREFIX=%PREFIX%/Library ^
  -DCMAKE_PREFIX_PATH=%PREFIX%/Library ^
  -DCMAKE_SYSTEM_PREFIX_PATH=%SYS_PREFIX% ^
  -DUSE_GUI=ON ^
  -DNG_INSTALL_DIR_PYTHON=../lib/site-packages ^
  -DNG_INSTALL_DIR_INCLUDE=include/netgen ^
  -DUSE_CCACHE=ON

cmake --build . --target INSTALL --config Release
