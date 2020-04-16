# change for ubuntu and docker once the file works
#! /bin/bash

# Build vim from source
sh vim/build_from_source.sh

# Install packages required for coc.nvim and installed language servers 
ENV DEBIAN_FRONTEND noninteractive
apt install -y cmake \
    clangd-9 \
    texlive-latex-extra \
    nodejs \
    npm \
    yarn

# Install dependencies for latex language server
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
~/.cargo/bin/cargo install --git https://github.com/latex-lsp/texlab.git
update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-9 100

# Install dependencies for python language server 
pip install python-language-server pyflakes

# TODO move to .vimrc with 
#if empty(glob('~/.vim/autoload/plug.vim'))
#  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
#    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
#endif

# Setup vim plug to manage plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# <ake vim-undo history directory
mkdir -p ~/.vim/vim-undo

# Install vim plugins with vim-plug
echo "installing plug-ins..."
vim +'PlugInstall --sync' +qa > /dev/null
echo "finished installing plug-ins!"

#RUN cd /env-setup && bash dotfiles/setup.sh

# Setup vim undo history directory
RUN mkdir -p ~/.vim/vim-undo
#RUN apt-get install pip 
#RUN pip install pyflakes numpy
#SHELL ["/bin/bash", "--login", "-c"]

ADD vim/ env-setup/vim
ADD dotfiles/* /root/
ADD dotfiles/coc-settings.json /root/.vim/coc-settings.json
RUN cd /env-setup && sh vim/setup.sh
