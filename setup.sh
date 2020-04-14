#!/bin/bash

# install generic junk
sh apt-get.sh
sudo apt-get install -y --force-yes \
        emacs \
        mercurial \
        git \
        openssh-client \
        openssh-server \
        silversearcher-ag \
        tar \
        tmux \
        cmake3 \
        build-essential


# setup symlink
sh dotfiles/setup.sh

#install autojump
cd bash/autojump
./install.py
cd ../../

#install docker
#sh bash/install_docker_ubuntu.sh

# install vim-plug

sh bash/apt-get.sh

# user input needed; all saved for the end
# install solarized...
# for vim: in .vimrc as plugin
# for bash
#./bash/gnome-terminal-colors-solarized/install.sh

# change default editor
#sudo update-alternatives --config editor
