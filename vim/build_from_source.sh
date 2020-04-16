#!/bin/bash
# Taken more or less from https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
mkdir -p ~/.vim/build
cd ~/.vim/build
apt install -y --force-yes \
    libncurses5-dev \
    libgnome2-dev \
    libgnomeui-dev \
    libgtk2.0-dev \
    libatk1.0-dev \
    libbonoboui2-dev \
    libcairo2-dev \
    libx11-dev \
    libxpm-dev \
    libxt-dev \
    python-dev \
    python3-dev \
    git \
    checkinstall


# remove system vim
apt remove -y vim vim-runtime gvim vim-tiny vim-common vim-gui-common vim-nox

# clone working vim
git clone https://github.com/vim/vim.git .

# configure and compile vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-python3interp=yes \
            --enable-luainterp=yes \
            --with-python3-config-dir=/usr/lib/python3.4/config-3.4m-x86_64-linux-gnu/ \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local

make VIMRUNTIMEDIR=/usr/local/share/vim/vim82

# verify installation and update user preferences to use vim
checkinstall
update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
update-alternatives --set editor /usr/bin/vim
update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
update-alternatives --set vi /usr/bin/vim
