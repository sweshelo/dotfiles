source ~/.git-completion.bash
source ~/.git-prompt.sh

lime='\[\033[1;32m\]';
green='\[\033[36m\]';
white='\[\033[00m\]';
PS1="${lime}\u@\h${white} : ${green}\W\$( __git_ps1 )\n\$${white} "

alias ls='ls --color=auto'
alias la='ls -la'
alias ..='cd ..'
alias l='ls -l'

export JAVA_HOME=/opt/jdk-17.0.2
export PATH=$PATH:/usr/local/bin:/opt/jdk-17.0.2/bin
. "$HOME/.cargo/env"

# neovide
export NEOVIDE_MULTIGRID=true
export NEOVIDE_FRAMELESS=true

# Deno
export DENO_INSTALL="/home/sw/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
