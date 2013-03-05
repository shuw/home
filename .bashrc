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
export GREP_OPTIONS='--color=always'
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
