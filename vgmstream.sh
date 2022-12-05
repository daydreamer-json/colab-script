#!/bin/bash
sudo apt update
curl -SsLO https://cdn.vgmstream.org/599326a3624d07345e7235317f1eaa46b9ff3a50/linux/vgmstream-cli.tar.gz
tar axvf vgmstream-cli.tar.gz
rm vgmstream-cli.tar.gz
chmod a+rx vgmstream-cli
sudo mv vgmstream-cli /usr/local/bin/vgmstream
