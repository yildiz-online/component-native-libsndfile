cmake ../../c++ \
-DCMAKE_BUILD_TYPE=Release \
-DBUILD_TESTING=OFF \
-DBUILD_STATIC_LIBS=OFF \
-DENABLE_CPACK=OFF \
-DENABLE_PACKAGE_CONFIG=OFF \
-DBUILD_PROGRAMS=OFF \
-DBUILD_EXAMPLES=OFF \
-DALSA_INCLUDE_DIR="alsa/linux64/include" \
-DALSA_LIBRARY="alsa/linux64/lib/libalsa.so" \
-DFLAC_INCLUDE_DIR="flac/linux64/include" \
-DFLAC_LIBRARY="flac/linux64/lib/libFLAC.so" \
-DOGG_INCLUDE_DIR="ogg/linux64/include" \
-DOGG_LIBRARY="ogg/linux64/lib/libogg.a" \
-DVORBIS_INCLUDE_DIR="vorbis/linux64/include" \
-DVORBIS_LIBRARY="vorbis/linux64/lib/libvorbis.a" \
-DVORBISFILE_LIBRARY="vorbis/linux64/lib/libvorbisfile.a" \
-DVORBISENC_LIBRARY="vorbis/linux64/lib/libvorbisenc.a"  \
-DCMAKE_INSTALL_PREFIX="../../../../target/classes/linux64" \
-DDISABLE_EXTERNAL_LIBS=OFF
-G "Unix Makefiles"

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
rm -r alsa
rm -r flac

return $r1
