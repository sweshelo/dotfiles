#!/bin/bash

# git branch
wget --no-check-certificate https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash
wget --no-check-certificate https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh

# function
function mapping(){
    file_path=$1;
    link_path=$2;

    # Old config files evac.
    if [[ -e ${link_path} ]]; then
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
mapping ${SHELL_PATH}/keymap.sh ~/.keymap.sh
mapping ${SHELL_PATH}/mutt ~/.mutt

git config --global core.excludesFile ${SHELL_PATH}/gitignore

# fisher
if fish --version &> /dev/null ; then
  echo 'fish is already installed.'
  FISH_INSTALLED=true
else
  sudo apt install fish && FISH_INSTALLED=true
fi

if $FISH_INSTALLED ; then
  curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fi
