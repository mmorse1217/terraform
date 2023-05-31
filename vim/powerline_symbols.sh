#!/bin/bash

git clone https://github.com/powerline/fonts --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
mkdir -p ~/.fontconfig/conf.d/
cd ~/.fontconfig/conf.d/
wget https://raw.githubusercontent.com/powerline/fonts/master/fontconfig/50-enable-terminess-powerline.conf
wget https://raw.githubusercontent.com/powerline/powerline/develop/font/10-powerline-symbols.conf
fc-cache -vf
