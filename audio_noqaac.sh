#!/bin/bash
rm -rf /content/sample_data
mkdir /content/build_tempdir
cd /content/build_tempdir
echo Updating package cache ...
sudo apt update > /dev/null 2>&1
echo Uninstalling opus ...
sudo apt purge opus* > /dev/null 2>&1
echo Installing dependences ...
sudo apt install p7zip-full p7zip-rar ffmpeg libsndfile1 libsndfile1-dev libflac-dev libmad0-dev libtwolame-dev libwavpack-dev libpng-dev speex libkate-dev -y > /dev/null 2>&1
echo Downloading lame ...
curl -SsLo lame.tar.gz "https://is.gd/LuFIVJ" > /dev/null 2>&1 # 3.100
echo Downloading twolame ...
curl -SsLo twolame.tar.gz "https://github.com/njh/twolame/releases/download/0.4.0/twolame-0.4.0.tar.gz" > /dev/null 2>&1
echo Downloading flac ...
curl -SsLo flac.tar.xz "https://ftp.osuosl.org/pub/xiph/releases/flac/flac-1.4.2.tar.xz" > /dev/null 2>&1
echo Downloading libogg ...
curl -SsLo ogg.tar.xz "https://github.com/xiph/ogg/releases/download/v1.3.5/libogg-1.3.5.tar.xz" > /dev/null 2>&1
echo Downloading libvorbis ...
curl -SsLo vorbis.tar.xz "https://ftp.osuosl.org/pub/xiph/releases/vorbis/libvorbis-1.3.7.tar.xz" > /dev/null 2>&1
echo Downloading vorbis-tools ...
curl -SsLo vorbis-tools.tar.gz "https://downloads.xiph.org/releases/vorbis/vorbis-tools-1.4.2.tar.gz" > /dev/null 2>&1
echo Downloading aotuv ...
curl -SsLo aotuv.tar.gz "https://github.com/AO-Yumi/vorbis_aotuv/archive/refs/tags/beta6.03-2020.tar.gz" > /dev/null 2>&1
echo Downloading opus ...
curl -SsLo opus.tar.gz "https://archive.mozilla.org/pub/opus/opus-1.3.1.tar.gz" > /dev/null 2>&1
echo Downloading opusfile ...
curl -SsLo opusfile.tar.gz "https://downloads.xiph.org/releases/opus/opusfile-0.12.tar.gz" > /dev/null 2>&1
echo Downloading libopusenc ...
curl -SsLo libopusenc.tar.gz "https://archive.mozilla.org/pub/opus/libopusenc-0.2.1.tar.gz" > /dev/null 2>&1
echo Downloading opus-tools ...
curl -SsLo opus-tools.tar.gz "https://archive.mozilla.org/pub/opus/opus-tools-0.2.tar.gz" > /dev/null 2>&1
echo Downloading sox ...
curl -SsLo sox.tar.bz2 "https://is.gd/E3NxK9" > /dev/null 2>&1 # 14.4.2
# curl -SsLo qaac.zip "https://github.com/nu774/qaac/releases/download/v2.76/qaac_2.76.zip" > /dev/null 2>&1
echo Downloading nero ...
curl -SsLo nero.zip "https://is.gd/pg467f" > /dev/null 2>&1
echo Extracting package ...
tar -axvf lame.tar.gz > /dev/null 2>&1
tar -axvf twolame.tar.gz > /dev/null 2>&1
tar -axvf flac.tar.xz > /dev/null 2>&1
tar -axvf ogg.tar.xz > /dev/null 2>&1
tar -axvf vorbis.tar.xz > /dev/null 2>&1
tar -axvf vorbis-tools.tar.gz > /dev/null 2>&1
tar -axvf aotuv.tar.gz > /dev/null 2>&1
tar -axvf opus.tar.gz > /dev/null 2>&1
tar -axvf opusfile.tar.gz > /dev/null 2>&1
tar -axvf libopusenc.tar.gz > /dev/null 2>&1
tar -axvf opus-tools.tar.gz > /dev/null 2>&1
tar -axvf sox.tar.bz2 > /dev/null 2>&1
# 7z x qaac.zip > /dev/null 2>&1
mkdir nero
mv nero.zip ./nero/ > /dev/null 2>&1
cd /content/build_tempdir/nero
7z x nero.zip > /dev/null 2>&1
cd /content/build_tempdir
rm *.tar.gz > /dev/null 2>&1
rm *.tar.xz > /dev/null 2>&1
rm *.tar.bz2 > /dev/null 2>&1
rm *.zip > /dev/null 2>&1
rename -v 's/-[0-9].*//' lame-* > /dev/null 2>&1
rename -v 's/-[0-9].*//' twolame-* > /dev/null 2>&1
rename -v 's/-[0-9].*//' flac-* > /dev/null 2>&1
rename -v 's/-[0-9].*//' lib*-* > /dev/null 2>&1
rename -v 's/-[0-9].*//' *-tools-* > /dev/null 2>&1
rename -v 's/-[0-9].*//' *_aotuv-* > /dev/null 2>&1
rename -v 's/-[0-9].*//' opus-* > /dev/null 2>&1
rename -v 's/-[0-9].*//' opusfile-* > /dev/null 2>&1
rename -v 's/-[0-9].*//' sox-* > /dev/null 2>&1
# rename -v 's/_[0-9].*//' qaac_* > /dev/null 2>&1
echo Compiling lame ...
cd /content/build_tempdir/lame/
./configure > /dev/null 2>&1
make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo Compiling twolame ...
cd /content/build_tempdir/twolame/
./configure > /dev/null 2>&1
make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo Compiling flac ...
cd /content/build_tempdir/flac/
./configure > /dev/null 2>&1
make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo Compiling libogg ...
cd /content/build_tempdir/libogg/
./configure > /dev/null 2>&1
make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo Compiling libvorbis ...
cd /content/build_tempdir/libvorbis/
./configure > /dev/null 2>&1
make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo Compiling vorbis-tools ...
cd /content/build_tempdir/vorbis-tools/
./configure > /dev/null 2>&1
make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo Compiling aotuv ...
cd /content/build_tempdir/vorbis_aotuv/
chmod -R 774 . > /dev/null 2>&1
./configure > /dev/null 2>&1
make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo Compiling opus ...
cd /content/build_tempdir/opus/
./configure > /dev/null 2>&1
make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo Compiling opusfile ...
cd /content/build_tempdir/opusfile/
./configure > /dev/null 2>&1
make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo Compiling libopusenc ...
cd /content/build_tempdir/libopusenc/
./configure > /dev/null 2>&1
make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo Compiling opus-tools ...
cd /content/build_tempdir/opus-tools/
./configure > /dev/null 2>&1
make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
echo Compiling sox ...
cd /content/build_tempdir/sox/
./configure > /dev/null 2>&1
make > /dev/null 2>&1
sudo make install > /dev/null 2>&1
# mkdir /qaac/
# cp /content/build_tempdir/qaac/x64/* /qaac/
# cp /content/build_tempdir/qaac/x86/* /qaac/
# alias qaac64='wine /qaac/qaac64.exe'
# alias qaac='wine /qaac/qaac.exe'
# alias refalac64='wine /qaac/refalac64.exe'
# alias refalac='wine /qaac/refalac.exe'
echo Copying nero ...
sudo cp /content/build_tempdir/nero/linux/* /usr/local/bin/ > /dev/null 2>&1
sudo chmod a+x /usr/local/bin/nero* > /dev/null 2>&1
cd /content/
echo Cleaning cache ...
rm -rf /content/build_tempdir > /dev/null 2>&1
echo Updating library cache ...
sudo ldconfig > /dev/null 2>&1
echo Complete.
