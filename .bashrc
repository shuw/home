# .bashrc

if [ -z "$PS1" ]; then
  return
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Source local definitions
if [ -f $HOME/profile/bashrc ]
then
  . $HOME/profile/bashrc
fi;

export MY_SHORT_PATH='$(echo -n "${PWD/#$HOME/~}" | awk -F "/" '"'"'{if (length($0) > 14) { if (NF>4) print $1 "/" $2 "/.../" $(NF-1) "/" $NF; else if (NF>3) print $1 "/" $2 "/.../" $NF; else print $1 "/.../" $NF; } else print $0;}'"'"')'
PS1="[\u@\h $MY_SHORT_PATH] "

export EDITOR=$(which vim)
export GREP_OPTIONS='--color=auto'
export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH
export PATH=/usr/local/heroku/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH

# Shortcuts
alias g='git'
alias tma='tmux attach'
alias dev='ssh dev'
alias httpserver='python -m SimpleHTTPServer &'
alias tm='tmux'
alias v='vim'
