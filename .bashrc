# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source Facebook definitions
if [ -f /mnt/vol/engshare/admin/scripts/master.bashrc ]; then
	. /mnt/vol/engshare/admin/scripts/master.bashrc
fi

PATH=$/home/shuw/bin\:$PATH ; export PATH
source "$ADMIN_SCRIPTS"/ssh/manage_agent.sh
