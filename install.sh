#!/bin/bash

# Vim
if [ ! -d ~/.config/nvim ]; then
    mkdir -p ~/.config/nvim
    git clone https://github.com/sweshelo/nvimrc ~/.config/nvim/
fi

# Links
SHELL_PATH=`pwd -P`
ln -s ${SHELL_PATH}/bashrc ~/.bashrc
ln -s ${SHELL_PATH}/tmux.conf ~/.tmux.conf
