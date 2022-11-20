#!/bin/bash
sudo apt update
sudo apt install build-essential libboost-all-dev pkg-config autoconf automake libtool nasm make cmake flex libpng-tools libpng-dev zlib1g-dev imagemagick optipng advancecomp parallel -y
mkdir /content/build_tempdir
cd /content/build_tempdir
git clone https://github.com/mozilla/mozjpeg.git
cd mozjpeg
sudo cmake .
sudo make
sudo make install
sudo rm /usr/bin/cjpeg
sudo rm /usr/local/bin/cjpeg
sudo rm /usr/bin/djpeg
sudo rm /usr/local/bin/djpeg
if [ -e "/opt/mozjpeg/bin/cjpeg" ]; then
  sudo ln -s /opt/mozjpeg/bin/cjpeg /usr/local/bin/
fi
if [ -e "/opt/mozjpeg/bin/djpeg" ]; then
  sudo ln -s /opt/mozjpeg/bin/djpeg /usr/local/bin/
fi
if [ -e "/opt/mozjpeg/bin/jpegtran" ]; then
  sudo ln -s /opt/mozjpeg/bin/jpegtran /usr/local/bin/
fi
if [ -e "/opt/mozjpeg/bin/rdjpgcom" ]; then
  sudo ln -s /opt/mozjpeg/bin/rdjpgcom /usr/local/bin/
fi
if [ -e "/opt/mozjpeg/bin/wrjpgcom" ]; then
  sudo ln -s /opt/mozjpeg/bin/wrjpgcom /usr/local/bin/
fi
rm -rf /content/build_tempdir
