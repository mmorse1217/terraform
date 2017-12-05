#!/bin/bash

# install generic junk
sudo apt-get install -y vim emacs mercurial git openssh-client openssh-server tar

# setup symlink
sh symlink_dotfiles.sh

#install autojump
cd bash/autojump
./install.py
cd ../../

#install docker
#sh bash/install_docker_ubuntu.sh

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# user input needed; all saved for the end
# install solarized...
# for vim
#mkdir -p ~/.vim/colors/
#cp vim/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/

# for bash
#./bash/gnome-terminal-colors-solarized/install.sh

# change default editor
#sudo update-alternatives --config editor
