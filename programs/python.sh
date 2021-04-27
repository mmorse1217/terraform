# Install python (stripped down anaconda version)
echo "Installing python..."
#if [[ -d /home/${USER}/miniconda* ]]; then
  wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh 
  sudo bash Miniconda3-latest-Linux-x86_64.sh -ub 
  echo 'export PATH="~/miniconda3/bin:$PATH"' | cat - ~/.bashrc > /tmp/out 
  mv /tmp/out ~/.bashrc 
  ln -s ~/miniconda3/bin/python3 /usr/bin/python
  rm Miniconda3-latest-Linux-x86_64.sh
  export PATH=~/miniconda3/bin:$PATH
#fi
