FROM ubuntu:18.04

# update and install all packages
RUN apt-get update
RUN apt-get upgrade -y



# install packages from apt-get
RUN apt-get install -y \
    openssh-server \
    openssh-client 
# Install vim from source
# https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
#RUN bash vim/setup.sh
RUN apt remove vim vim-runtime gvim

RUN apt-get install -y --force-yes checkinstall libncurses5-dev  \
    libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git
RUN apt remove -y vim vim-runtime gvim vim-tiny vim-common vim-gui-common vim-nox
RUN git clone https://github.com/vim/vim.git
RUN cd /vim && \
    ./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.4/config-3.4m-x86_64-linux-gnu/ \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local 
RUN cd /vim && make VIMRUNTIMEDIR=/usr/local/share/vim/vim82
RUN cd /vim && checkinstall
#RUN update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
#RUN update-alternatives --set editor /usr/bin/vim
#RUN update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
#RUN update-alternatives --set vi /usr/bin/vim
CMD ["/bin/bash"]
RUN apt-get install -y curl
# Install vim-plug to manage packages
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# make vim-undo history directory
RUN mkdir -p ~/.vim/vim-undo

# Install supertab
#vim -c 'so % | q' somevimball.vba

# Begin plugin install: these steps are required from coc.nvim
# Install node

#RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash 
#RUN source ~/.bashrc
#RUN nvm install node
RUN apt-get install -y nodejs npm yarn

# change for ubuntu
RUN apt-get install -y cmake clangd-9
RUN update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-9 100
ADD vim/ env-setup/vim
ADD dotfiles/* /root/
#RUN cd /env-setup && bash dotfiles/setup.sh

# Setup vim undo history directory
RUN mkdir -p ~/.vim/vim-undo
RUN cd /env-setup && sh vim/setup.sh
#RUN apt-get install pip 
#RUN pip install pyflakes numpy
#SHELL ["/bin/bash", "--login", "-c"]
CMD ["/bin/bash"]
#RUN git clone --recursive https://github.com/cquery-project/cquery.git &&\
#cd cquery &&\
#git submodule update --init &&\
#mkdir build && cd build &&\
#cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=release -DCMAKE_EXPORT_COMPILE_COMMANDS=YES &&\
#cmake --build . &&\
#cmake --build . --target install
# "languageserver": {
#    "cquery": {
#      "command": "cquery",
#      "args": ["--log-file=/tmp/cq.log"],
#      "filetypes": ["c", "cpp"],
#      "rootPatterns": ["compile_flags.txt", "compile_commands.json", ".git/", ".hg/"],
#      "initializationOptions": {
#        "cacheDirectory": "/tmp/cquery"
#      }
#    }
#  }
#vim +'PlugInstall --sync' +qa > /dev/null
#Install other packages from apt-get
#RUN apt-get install -y --force-yes \
#        git \
#        silversearcher-ag \
#        tmux \
#        cmake3 \
#        build-essential
#
# Pull dotfiles and symlink

# Install emacs + spacemacs from source
#RUN apt-get install -y emacs
#RUN mv .emacs.d .emacs.d.bak
#RUN mv .emacs .emacs.bak
#RUN git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

#
## Install Docker
#RUN sudo apt-get install -y docker.io
#RUN sudo systemctl start docker
#RUN sudo systemctl enable docker
