colorscheme desert
syntax on

" Load local config
if filereadable($HOME.'/profile/vimrc')
  source $HOME/profile/vimrc
endif

" Settings
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set incsearch
set hlsearch
set noswapfile " because they are annoying
set autoread
set number
set mouse=a

" Enable pathogen plugins
call pathogen#infect()
filetype plugin indent on

" We have a big repository, sadly enough
let g:CommandTMaxFiles=50000

" Abbreviations
iab hd hphpd_break();

let mapleader = ","

" Select just pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Non-regex search shortcut
nmap <Leader>s :execute '/\V' . escape(input('/'), '\\/')<CR>

" Nerd tree shortcuts
nmap <leader>nt :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFind<cr>

" Switch between .cpp and .h
nmap <leader>h :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" Quicker save
nmap <leader>s :w<CR>

" Toggle paste mode
set pastetoggle=<leader>p
