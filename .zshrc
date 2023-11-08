plugins=(git ssh-agent)

# for maven and other apps, note this is from the Apple JDK installation and the version may change
export JAVA_HOME=`/usr/libexec/java_home -v 11`;

# Helps avoid Maven out-of-memory errors
export MAVEN_OPTS=-Xmx4g

#Add jingle scripts directory to path for easier execution on the command line
export PATH=$HOME/jingle/scripts:$HOME/jingle/Jingle/tools/run:$HOME/jingle/Jingle/tools/iTunes:$PATH;

# Sublime shortcut
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# use this to specify your remote user for scripts such as mic and updateCaches.sh
export REMOTE_USER="shu_wu"

source $HOME/.aliases
if [ -f $HOME/profile/aliases ]; then
    source $HOME/profile/aliases
fi

# Source local definitions
if [ -f $HOME/profile/zshrc ]
then
  . $HOME/profile/zshrc
fi;

# Source host definitions
if [ -f $HOME/profile/`uname`/zshrc ]
then
  . $HOME/profile/`uname`/zshrc
fi;

eval "$(/opt/homebrew/bin/brew shellenv)"

# Function to rename tmux window to current directory
function tmux_auto_rename_precmd() {
  if [[ -n "$TMUX" ]]; then
    # Rename tmux window to current directory name
    tmux rename-window "$(basename "$PWD")"
  fi
}

# Hook into the precmd_functions array
precmd_functions+=(tmux_auto_rename_precmd)
