source $ADMIN_SCRIPTS/master.vimrc
set number
highlight TrailWhitespace ctermbg=red guibg=red
match TrailWhitespace /\s\+$\| \+\ze\t/
