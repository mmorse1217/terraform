#!/bin/bash

# Build vim from source
bash vim/build_from_source.sh

# Set up language servers (for use with coc.nvim)
bash vim/setup_language_servers.sh

# Install plugins
bash vim/install_plugins.sh
