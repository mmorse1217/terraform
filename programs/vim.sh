#!/bin/bash

# Build vim from source
bash vim/build_from_source.sh

# Set up language servers (for use with coc.nvim)
if [[ ! -z "${VIM_DEV}" ]]; then
    bash vim/setup_language_servers.sh;
fi

# Install plugins
bash vim/install_plugins.sh
