source $ADMIN_SCRIPTS/master.vimrc
set number
highlight TrailWhitespace ctermbg=red guibg=red
match TrailWhitespace /\s\+$\| \+\ze\t/
colorscheme elflord
if $HOSTNAME == 'devrs137.prn1.facebook.com'
  source ~/.fb.vimrc
endif
