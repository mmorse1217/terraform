# Install python (stripped down anaconda version)
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh 
bash Miniconda3-latest-Linux-x86_64.sh -b 
echo 'export PATH="/root/miniconda3/bin:$PATH"' | cat - ~/.bashrc > /tmp/out 
mv /tmp/out ~/.bashrc 
rm Miniconda3-latest-Linux-x86_64.sh
export PATH=~/miniconda3/bin:$PATH
