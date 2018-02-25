cmake ../../c++ \
-DCMAKE_BUILD_TYPE=Release \
-DBUILD_TESTING=OFF \
-DBUILD_STATIC_LIBS=OFF \
-DDISABLE_EXTERNAL_LIBS=OFF \
-DENABLE_CPACK=OFF \
-DENABLE_PACKAGE_CONFIG=OFF \
-DBUILD_PROGRAMS=OFF \
-DBUILD_EXAMPLES=OFF \
-DOGG_INCLUDE_DIR="ogg/win64/include" \
-DOGG_LIBRARY="ogg/win64/lib/libogg.a" \
-DFLAC_INCLUDE_DIR="flac/win64/include" \
-DFLAC_LIBRARY="flac/win64/lib/libFLAC.dll.a" \
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
rm sndfile.pc
rm -r ogg
rm -r vorbis
rm -r flac

return $r1
