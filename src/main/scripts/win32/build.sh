cmake ../../c++ -DCMAKE_BUILD_TYPE=Release -DCMAKE_COLOR_MAKEFILE=on -DCMAKE_INSTALL_PREFIX="../../../../target/classes/win32" -DCMAKE_TOOLCHAIN_FILE=mingw-toolchain.cmake

make install

rm -R CMakeFiles
rm CMakeCache.txt
rm cmake_install.cmake
rm Makefile

rm install_manifest.txt
