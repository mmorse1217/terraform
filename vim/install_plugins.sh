#!/bin/bash

# TODO move to .vimrc with 
#if empty(glob('~/.vim/autoload/plug.vim'))
#  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
#    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
#endif

# Setup vim plug to manage plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Make vim-undo history directory
mkdir -p ~/.vim/vim-undo

# Install vim plugins with vim-plug
echo "installing plug-ins..."
vim +'PlugInstall --sync' +qa > /dev/null
echo "finished installing plug-ins!"


