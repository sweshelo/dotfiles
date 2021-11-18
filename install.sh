#!/bin/bash

# function
function mapping(){
    file_path=$1;
    link_path=$2;

    # Old config files evac.
    if [ -e ${link_path} ]; then
        mv ${link_path} ${link_path}.old
    fi
    
    ln -s $file_path $link_path
}

# Vim
if [ ! -d ~/.config/nvim ]; then
    mkdir -p ~/.config/nvim
    git clone https://github.com/sweshelo/nvimrc ~/.config/nvim/
fi

# Old config files evac.

# Links
SHELL_PATH=`pwd -P`
mapping ${SHELL_PATH}/bashrc ~/.bashrc
mapping ${SHELL_PATH}/bashrc ~/.bash_profile
mapping ${SHELL_PATH}/tmux.conf ~/.tmux.conf
