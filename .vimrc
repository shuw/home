colorscheme desert

" Load group config
if filereadable($HOME.'/group/group.vimrc')
  source $HOME/group/group.vimrc
endif

" Enable pathogen plugins
call pathogen#infect()
filetype plugin indent on

set number
set mouse=a
let mapleader = ","

" Nerd tree shortcuts
nmap <leader>nt :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFind<cr>
