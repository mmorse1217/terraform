#!/bin/bash
# setup symlink
sh symlink_dotfiles.sh

#install autojump
cd bash/autojump
./install.py
cd ../../

#install docker
sh bash/install_docker_ubuntu.sh

# install solarized...
# for vim
mkdir -p ~/.vim/colors/
cp vim/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/

# for bash
./bash/gnome-terminal-colors-solarized/install.sh

