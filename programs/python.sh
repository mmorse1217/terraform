# Install python (stripped down anaconda version)
echo "Installing python..."
if [[ ! -d /home/${USER}/miniconda* ]]; then
    apt update
    apt install -y wget
    rm -rf /var/lib/apt/lists/*

    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh 
    bash Miniconda3-latest-Linux-x86_64.sh -ub 
    echo 'export PATH="~/miniconda3/bin:$PATH"' | cat - ~/.bashrc > /tmp/out 
    mv /tmp/out ~/.bashrc 
    ln -s ~/miniconda3/bin/python3 /usr/bin/python
    rm Miniconda3-latest-Linux-x86_64.sh
    export PATH=~/miniconda3/bin:$PATH
    conda install -c conda-force mamba
fi
