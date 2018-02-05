if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f ~/.fbchef/environment ]; then
# BEGIN: Block added by chef, to set environment strings
# Please see https://fburl.com/AndroidProvisioning if you do not use bash
# or if you would rather this bit of code 'live' somewhere else
. ~/.fbchef/environment
# END: Block added by chef
fi
