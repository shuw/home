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

# Source host definitions
if [ -f $HOME/profile/`uname`/bashrc ]
then
  . $HOME/profile/`uname`/bashrc
fi;

PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W\$ '

export EDITOR=$(which vim)
export GREP_OPTIONS='--color=auto'

# Shortcuts
alias ll='ls -lGh $@'
alias g='git'
alias h='hg'
alias tma='tmux attach'
alias tm='tmux'
alias v='vim'

# VI mode for command line
set -o vi
