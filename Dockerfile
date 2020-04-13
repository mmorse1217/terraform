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
RUN update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
RUN update-alternatives --set editor /usr/bin/vim
RUN update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
RUN update-alternatives --set vi /usr/bin/vim
CMD ["/bin/bash"]
## Install emacs + spacemacs from source
#
## Install Docker
#RUN sudo apt-get install -y docker.io
#RUN sudo systemctl start docker
#RUN sudo systemctl enable docker
