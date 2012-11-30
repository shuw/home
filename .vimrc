colorscheme desert

if filereadable($HOME/group/group.vimrc)
  . $HOME/group/group.vimrc
endif

call pathogen#infect()
filetype plugin indent on

set number
set mouse=a
