colorscheme desert

" Default settings
set tabstop=2

" Load local config
if filereadable($HOME.'/profile/vimrc')
  source $HOME/profile/vimrc
endif

" Enable pathogen plugins
call pathogen#infect()
filetype plugin indent on

let mapleader = ","

" Nerd tree shortcuts
nmap <leader>nt :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFind<cr>

" Shortcuts
set autoread
set number
set mouse=a
