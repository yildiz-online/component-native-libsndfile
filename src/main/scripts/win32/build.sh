cmake ../../c++ -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=FALSE -DCMAKE_COLOR_MAKEFILE=on -DCMAKE_INSTALL_PREFIX="../../../../target/classes/win32" -DCMAKE_TOOLCHAIN_FILE=mingw-toolchain.cmake

make install
r1=$?
make clean

rm -R CMakeFiles
rm CMakeCache.txt
rm cmake_install.cmake
rm Makefile
rm install_manifest.txt
rm -r doc
rm -r src
rm -r Testing
rm -r tests
rm CPackConfig.cmake
rm CPackSourceConfig.cmake
rm CTestTestfile.cmake
rm DartConfiguration.tcl
rm LibSndFileConfig.cmake
rm LibSndFileConfigVersion.cmake
rm sndfile.pc

return $r1
