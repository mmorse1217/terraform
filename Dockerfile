FROM ubuntu:18.04

# update and install all packages
RUN apt-get update
RUN apt-get upgrade -y && apt install -y sudo git

ENV VIM_DEV=1 DEBIAN_FRONTEND=noninteractive \
    PATH="~/miniconda3/bin:${PATH}"  \
    TERM=xterm-256color 

# Clone environment configuration
RUN git clone https://github.com/mmorse1217/terraform.git --recursive &&\
    cd terraform &&\
    bash apt.sh && \
    bash dotfiles/setup.sh && \
    bash programs/python.sh && \  
    bash programs/tmux.sh && \ 
    bash programs/vim.sh  
CMD ["/bin/bash"]
