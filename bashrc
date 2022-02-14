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

export PATH=$PATH:/usr/local/bin
