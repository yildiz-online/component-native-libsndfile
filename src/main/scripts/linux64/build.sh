cmake ../../c++ \
-DCMAKE_BUILD_TYPE=Release \
-DOGG_INCLUDE_DIR="ogg/linux64/include" \
-DOGG_LIBRARY="ogg/linux64/lib/libogg.a" \
-DVORBIS_INCLUDE_DIR="vorbis/linux64/include" \
-DVORBIS_LIBRARY="vorbis/linux64/lib/libvorbis.a" \
-DVORBISFILE_LIBRARY="vorbis/linux64/lib/libvorbisfile.a" \
-DVORBISENC_LIBRARY="vorbis/linux64/lib/libvorbisenc.a"  \
-DCMAKE_INSTALL_PREFIX="../../../../target/classes/linux64" \
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
rm -r Testing
rm -r tests
rm CPackConfig.cmake
rm CPackSourceConfig.cmake
rm CTestTestfile.cmake
rm DartConfiguration.tcl
rm LibSndFileConfig.cmake
rm LibSndFileConfigVersion.cmake
rm sndfile.pc
rm -r ogg
rm -r vorbis

return $r1
