source $ADMIN_SCRIPTS/master.vimrc

set number

colorscheme desert

if $HOSTNAME == 'devrs137.prn1.facebook.com'
  source ~/.fb.vimrc
endif
