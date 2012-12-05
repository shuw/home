# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Source local definitions
if [ -f $HOME/profile/bashrc ]
then
  . $HOME/profile/bashrc
fi;

export EDITOR=$(which vim)
alias g='git'
alias tma='tmux attach'
alias dev='ssh dev'
export GREP_OPTIONS='--color=always'
