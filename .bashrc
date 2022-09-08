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

# Aliases
source $HOME/.aliases

# VI mode for command line
set -o vi

export JAVA_HOME=`/usr/libexec/java_home -v11`
export PATH="$JAVA_HOME/bin:$PATH"
