source ~/.git-completion.bash
source ~/.git-prompt.sh

lime='\[\033[1;32m\]';
green='\[\033[36m\]';
white='\[\033[00m\]';
PS1="${lime}\u@$(hostname)${white} : ${green}\W\$( __git_ps1 )\n\$${white} "

alias ls='ls --color=auto'
alias la='ls -la'
alias ..='cd ..'
alias l='ls -l'

if [[ -e /opt/jdk* ]] ; then
  export JAVA_HOME=/opt/jdk-17.0.2
  export PATH=$PATH:/usr/local/bin:/opt/jdk-17.0.2/bin
fi

if [[ -e $HOME/.cargo/env ]] ; then
  . "$HOME/.cargo/env"
fi

# neovide
export NEOVIDE_MULTIGRID=true
export NEOVIDE_FRAMELESS=true

# Deno
if [[ -e $HOME/.deno ]] ; then
  export DENO_INSTALL="$HOME/.deno"
  export PATH="$DENO_INSTALL/bin:$PATH"
fi
