#!/bin/bash
rm -rf /content/sample_data
mkdir /content/build_tempdir
cd /content/build_tempdir
sudo apt update
sudo apt purge opus*
sudo apt install p7zip-full p7zip-rar ffmpeg libsndfile1 libsndfile1-dev libflac-dev libmad0-dev libtwolame-dev libwavpack-dev libpng-dev speex libkate-dev -y
curl -SsLo lame.tar.gz "https://is.gd/LuFIVJ" # 3.100
curl -SsLo twolame.tar.gz "https://github.com/njh/twolame/releases/download/0.4.0/twolame-0.4.0.tar.gz"
curl -SsLo flac.tar.xz "https://ftp.osuosl.org/pub/xiph/releases/flac/flac-1.4.2.tar.xz"
curl -SsLo ogg.tar.xz "https://github.com/xiph/ogg/releases/download/v1.3.5/libogg-1.3.5.tar.xz"
curl -SsLo vorbis.tar.xz "https://ftp.osuosl.org/pub/xiph/releases/vorbis/libvorbis-1.3.7.tar.xz"
curl -SsLo vorbis-tools.tar.gz "https://downloads.xiph.org/releases/vorbis/vorbis-tools-1.4.2.tar.gz"
curl -SsLo aotuv.tar.gz "https://github.com/AO-Yumi/vorbis_aotuv/archive/refs/tags/beta6.03-2020.tar.gz"
curl -SsLo opus.tar.gz "https://archive.mozilla.org/pub/opus/opus-1.3.1.tar.gz"
curl -SsLo opusfile.tar.gz "https://downloads.xiph.org/releases/opus/opusfile-0.12.tar.gz"
curl -SsLo libopusenc.tar.gz "https://archive.mozilla.org/pub/opus/libopusenc-0.2.1.tar.gz"
curl -SsLo opus-tools.tar.gz "https://archive.mozilla.org/pub/opus/opus-tools-0.2.tar.gz"
curl -SsLo sox.tar.bz2 "https://is.gd/E3NxK9" # 14.4.2
# curl -SsLo qaac.zip "https://github.com/nu774/qaac/releases/download/v2.76/qaac_2.76.zip"
curl -SsLo nero.zip "https://is.gd/pg467f"
tar -axvf lame.tar.gz
tar -axvf twolame.tar.gz
tar -axvf flac.tar.xz
tar -axvf ogg.tar.xz
tar -axvf vorbis.tar.xz
tar -axvf vorbis-tools.tar.gz
tar -axvf aotuv.tar.gz
tar -axvf opus.tar.gz
tar -axvf opusfile.tar.gz
tar -axvf libopusenc.tar.gz
tar -axvf opus-tools.tar.gz
tar -axvf sox.tar.bz2
# 7z x qaac.zip
mkdir nero
mv nero.zip ./nero/
cd /content/build_tempdir/nero
7z x nero.zip
cd /content/build_tempdir
rm *.tar.gz
rm *.tar.xz
rm *.tar.bz2
rm *.zip
rename -v 's/-[0-9].*//' lame-*
rename -v 's/-[0-9].*//' twolame-*
rename -v 's/-[0-9].*//' flac-*
rename -v 's/-[0-9].*//' lib*-*
rename -v 's/-[0-9].*//' *-tools-*
rename -v 's/-[0-9].*//' *_aotuv-*
rename -v 's/-[0-9].*//' opus-*
rename -v 's/-[0-9].*//' opusfile-*
rename -v 's/-[0-9].*//' sox-*
# rename -v 's/_[0-9].*//' qaac_*
cd /content/build_tempdir/lame/
./configure
make
sudo make install
cd /content/build_tempdir/twolame/
./configure
make
sudo make install
cd /content/build_tempdir/flac/
./configure
make
sudo make install
cd /content/build_tempdir/libogg/
./configure
make
sudo make install
cd /content/build_tempdir/libvorbis/
./configure
make
sudo make install
cd /content/build_tempdir/vorbis-tools/
./configure
make
sudo make install
cd /content/build_tempdir/vorbis_aotuv/
chmod -R 774 .
./configure
make
sudo make install
cd /content/build_tempdir/opus/
./configure
make
sudo make install
cd /content/build_tempdir/opusfile/
./configure
make
sudo make install
cd /content/build_tempdir/libopusenc/
./configure
make
sudo make install
cd /content/build_tempdir/opus-tools/
./configure
make
sudo make install
cd /content/build_tempdir/sox/
./configure
make
sudo make install
# mkdir /qaac/
# cp /content/build_tempdir/qaac/x64/* /qaac/
# cp /content/build_tempdir/qaac/x86/* /qaac/
# alias qaac64='wine /qaac/qaac64.exe'
# alias qaac='wine /qaac/qaac.exe'
# alias refalac64='wine /qaac/refalac64.exe'
# alias refalac='wine /qaac/refalac.exe'
sudo cp /content/build_tempdir/nero/linux/* /usr/local/bin/
sudo chmod a+x /usr/local/bin/nero*
cd /content/
rm -rf /content/build_tempdir
sudo ldconfig
