# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

if [ $HOSTNAME == 'devrs137.prn1.facebook.com' ]; then
  source ~/.fb.bashrc
fi

export EDITOR=$(which vim)
alias g='git'
alias tma='tmux attach'
