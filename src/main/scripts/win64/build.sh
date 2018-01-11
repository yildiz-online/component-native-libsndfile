cmake ../../c++ \
-DCMAKE_BUILD_TYPE=Release \
-DBUILD_PROGRAMS=FALSE \
-DBUILD_TESTING=FALSE \
-DCMAKE_COLOR_MAKEFILE=on \
-DOGG_INCLUDE_DIR="ogg/win64/include" \
-DOGG_LIBRARY="ogg/win64/lib/libogg.a" \
-DVORBIS_INCLUDE_DIR="vorbis/win64/include" \
-DVORBIS_LIBRARY="vorbis/win64/lib/libvorbis.a" \
-DVORBISFILE_LIBRARY="vorbis/win64/lib/libvorbisfile.a" \
-DVORBISENC_LIBRARY="vorbis/win64/lib/libvorbisenc.a" \
-DCMAKE_INSTALL_PREFIX="../../../../target/classes/win64" \
-DCMAKE_TOOLCHAIN_FILE=mingw-toolchain.cmake

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
rm CPackConfig.cmake
rm CPackSourceConfig.cmake
rm LibSndFileConfig.cmake
rm LibSndFileConfigVersion.cmake
rm sndfile.pc
rm -r ogg
rm -r vorbis

return $r1
