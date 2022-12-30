#!/bin/bash
sudo apt update
curl -SsLo oxipng.tar.gz https://github.com/shssoichiro/oxipng/releases/download/v8.0.0/oxipng-8.0.0-x86_64-unknown-linux-musl.tar.gz
tar -axvf oxipng.tar.gz
rm oxipng.tar.gz
rename -v 's/oxipng-.*/oxipng/' oxipng-*
sudo mv ./oxipng/oxipng /usr/local/bin/oxipng
rm -rf oxipng
