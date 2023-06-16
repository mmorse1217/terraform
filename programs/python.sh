# Install python (stripped down anaconda version)
echo "Installing python..."
if  ! command -v wget &> /dev/null 
then 
    apt update 
    apt install -y wget --no-install-recommends
    rm -rf /var/lib/apt/lists/*
fi
if [[ ! -d /home/${USER}/miniconda* ]]; then
    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh --no-check-certificate
    bash Miniconda3-latest-Linux-x86_64.sh -ub 
    echo 'export PATH="~/miniconda3/bin:$PATH"' | cat - ~/.bashrc > /tmp/out 
    mv /tmp/out ~/.bashrc 
    ln -s ~/miniconda3/bin/python3 /usr/bin/python
    rm Miniconda3-latest-Linux-x86_64.sh
    export PATH=~/miniconda3/bin:$PATH
    conda install -c conda-forge mamba
fi
