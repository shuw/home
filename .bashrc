# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Source group definitions
if [ -f $HOME/group/group.bashrc ]
then
  . $HOME/group/group.bashrc
fi;

export EDITOR=$(which vim)
alias g='git'
alias tma='tmux attach'
