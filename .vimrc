colorscheme desert
syntax on

" Default settings
set tabstop=2

" Load local config
if filereadable($HOME.'/profile/vimrc')
  source $HOME/profile/vimrc
endif

" Enable pathogen plugins
call pathogen#infect()
filetype plugin indent on

" We have a big repository, sadly enough
let g:CommandTMaxFiles=50000

let mapleader = ","

" Select just pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Non-regex search shortcut
nmap <Leader>s :execute '/\V' . escape(input('/'), '\\/')<CR>

" Nerd tree shortcuts
nmap <leader>nt :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFind<cr>

" Shortcuts
set autoread
set number
set mouse=a
