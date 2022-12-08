#!/bin/bash
mkdir /ncnn_bin
cd /ncnn_bin
sudo apt update
sudo wget -q -nc -O /usr/local/bin/curl https://github.com/moparisthebest/static-curl/releases/latest/download/curl-amd64
sudo apt install unzip libvulkan-dev
curl -SsLo waifu2x.zip https://github.com/nihui/waifu2x-ncnn-vulkan/releases/download/20220728/waifu2x-ncnn-vulkan-20220728-ubuntu.zip
curl -SsLo realesrgan.zip https://github.com/xinntao/Real-ESRGAN-ncnn-vulkan/releases/download/v0.2.0/realesrgan-ncnn-vulkan-v0.2.0-ubuntu.zip
curl -SsLo realcugan.zip https://github.com/nihui/realcugan-ncnn-vulkan/releases/download/20220728/realcugan-ncnn-vulkan-20220728-ubuntu.zip
curl -SsLo srmd.zip https://github.com/nihui/srmd-ncnn-vulkan/releases/download/20220728/srmd-ncnn-vulkan-20220728-ubuntu.zip
curl -SsLo realsr.zip https://github.com/nihui/realsr-ncnn-vulkan/releases/download/20220728/realsr-ncnn-vulkan-20220728-ubuntu.zip
curl -SsLo dain.zip https://github.com/nihui/dain-ncnn-vulkan/releases/download/20220728/dain-ncnn-vulkan-20220728-ubuntu.zip
curl -SsLo cain.zip https://github.com/nihui/cain-ncnn-vulkan/releases/download/20220728/cain-ncnn-vulkan-20220728-ubuntu.zip
curl -SsLo rife.zip https://github.com/nihui/rife-ncnn-vulkan/releases/download/20221029/rife-ncnn-vulkan-20221029-ubuntu.zip
curl -SsLo ifrnet.zip https://github.com/nihui/ifrnet-ncnn-vulkan/releases/download/20220720/ifrnet-ncnn-vulkan-20220720-ubuntu.zip
unzip waifu2x.zip; unzip realesrgan.zip; unzip realcugan.zip; unzip srmd.zip; unzip realsr.zip; unzip dain.zip; unzip cain.zip; unzip rife.zip; unzip ifrnet.zip
rm *.zip
rename -v 's/-ncnn-vulkan.*/-ncnn-vulkan/' *-ncnn-vulkan*
cd /content
sudo ln -s '/ncnn_bin/waifu2x-ncnn-vulkan/waifu2x-ncnn-vulkan' /usr/local/bin/waifu2x-ncnn-vulkan
sudo ln -s '/ncnn_bin/realesrgan-ncnn-vulkan/realesrgan-ncnn-vulkan' /usr/local/bin/realesrgan-ncnn-vulkan
sudo ln -s '/ncnn_bin/realcugan-ncnn-vulkan/realcugan-ncnn-vulkan' /usr/local/bin/realcugan-ncnn-vulkan
sudo ln -s '/ncnn_bin/srmd-ncnn-vulkan/srmd-ncnn-vulkan' /usr/local/bin/srmd-ncnn-vulkan
sudo ln -s '/ncnn_bin/realsr-ncnn-vulkan/realsr-ncnn-vulkan' /usr/local/bin/realsr-ncnn-vulkan
sudo ln -s '/ncnn_bin/dain-ncnn-vulkan/dain-ncnn-vulkan' /usr/local/bin/dain-ncnn-vulkan
sudo ln -s '/ncnn_bin/cain-ncnn-vulkan/cain-ncnn-vulkan' /usr/local/bin/cain-ncnn-vulkan
sudo ln -s '/ncnn_bin/rife-ncnn-vulkan/rife-ncnn-vulkan' /usr/local/bin/rife-ncnn-vulkan
sudo ln -s '/ncnn_bin/ifrnet-ncnn-vulkan/ifrnet-ncnn-vulkan' /usr/local/bin/ifrnet-ncnn-vulkan
