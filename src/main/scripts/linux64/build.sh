cmake ../../c++ \
-DCMAKE_BUILD_TYPE=Release \
-DBUILD_TESTING=OFF \
-DBUILD_STATIC_LIBS=OFF \
-DDISABLE_EXTERNAL_LIBS=OFF \
-DENABLE_CPACK=OFF \
-DENABLE_PACKAGE_CONFIG=OFF \
-DBUILD_PROGRAMS=OFF \
-DBUILD_EXAMPLES=OFF \
-DOGG_INCLUDE_DIR="ogg/linux64/include" \
-DOGG_LIBRARY="ogg/linux64/lib/libogg.so" \
-DFLAC_INCLUDE_DIR="flac/linux64/include" \
-DFLAC_LIBRARY="flac/linux64/lib/libFLAC.so" \
-DVORBIS_INCLUDE_DIR="vorbis/linux64/include" \
-DVORBIS_LIBRARY="vorbis/linux64/lib/libvorbis.so" \
-DVORBISFILE_LIBRARY="vorbis/linux64/lib/libvorbisfile.so" \
-DVORBISENC_LIBRARY="vorbis/linux64/lib/libvorbisenc.so" \
-DCMAKE_INSTALL_PREFIX="../../../../target/classes/linux64" \
-G "Unix Makefiles"

make install
r1=$?

cp ogg/linux64/lib/libogg.so ../../../../target/classes/linux64/lib
cp flac/linux64/lib/libFLAC.so ../../../../target/classes/linux64/lib
cp vorbis/linux64/lib/libvorbis.so ../../../../target/classes/linux64/lib

make clean

rm -r alsa
rm -r ogg
rm -r vorbis
rm -r flac
rm -r CMakeFiles
rm -r doc
rm -r src
rm CMakeCache.txt
rm cmake_install.cmake
rm install_manifest.txt
rm Makefile
rm sndfile.pc


return $r1
