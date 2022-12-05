#!/bin/bash
sudo apt update
sudo apt install unzip
curl -SsLo quickbms_bin.zip http://aluigi.org/papers/quickbms_linux.zip
unzip quickbms_bin.zip
rm quickbms_bin.zip
chmod a+rx quickbms
chmod a+rx quickbms_4gb_files
sudo mv quickbms /usr/local/bin/
sudo mv quickbms_4gb_files /usr/local/bin/
