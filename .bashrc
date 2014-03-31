# .bashrc

alias ll='ls -lGh $@'

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

# Source host definitions
if [ -f $HOME/profile/$HOSTNAME/bashrc ]
then
  . $HOME/profile/$HOSTNAME/bashrc
fi;

PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W\$ '

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
