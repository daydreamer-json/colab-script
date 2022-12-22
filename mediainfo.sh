#!/bin/bash
echo Downloading package ...
curl -SsLo libzen.deb https://mediaarea.net/download/binary/libzen0/0.4.39/libzen0v5_0.4.39-1_amd64.xUbuntu_18.04.deb
curl -SsLo libmediainfo.deb https://mediaarea.net/download/binary/libmediainfo0/22.09/libmediainfo0v5_22.09-1_amd64.xUbuntu_18.04.deb
curl -SsLo mediainfo_cli.deb https://mediaarea.net/download/binary/mediainfo/22.09/mediainfo_22.09-1_amd64.xUbuntu_18.04.deb
echo Updating package cache ...
sudo apt update > /dev/null 2>&1
echo Installing package ...
sudo apt install ./libzen.deb ./libmediainfo.deb ./mediainfo_cli.deb -y > /dev/null 2>&1
echo Cleaning cache ...
rm libzen.deb > /dev/null 2>&1
rm libmediainfo.deb > /dev/null 2>&1
rm mediainfo_cli.deb > /dev/null 2>&1
echo Complete.
