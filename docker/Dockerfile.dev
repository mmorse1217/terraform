FROM ubuntu:18.04

# update and install all packages
RUN apt-get update
RUN apt-get upgrade -y && apt install -y sudo git

ENV VIM_DEV=1 DEBIAN_FRONTEND=noninteractive \
    PATH="~/miniconda3/bin:${PATH}"  \
    TERM=xterm-256color 
CMD ["/bin/bash"]

# Clone environment configuration
RUN git clone https://github.com/mmorse1217/terraform.git --recursive 

WORKDIR /terraform 
RUN bash apt.sh 
RUN bash dotfiles/setup.sh 
RUN bash programs/tmux.sh 

ENV LC_ALL C.UTF-8
RUN bash vim/build_from_source.sh  
RUN bash vim/lang-servers/setup.sh  
RUN bash vim/install_plugins.sh
CMD ["/bin/bash"]
