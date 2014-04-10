syntax on

" Default settings (before local config)
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set ruler

" More settings
set noswapfile " because they are annoying
set autoread
set mouse=a
set splitbelow
set splitright

" Enable pathogen plugins
call pathogen#infect()
filetype plugin indent on

" We have a big repository, sadly enough
let g:CommandTMaxFiles=50000

" Abbreviations
iab hd hphpd_break();
iab pdbg import pdb; pdb.set_trace();

" Select just pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <C-w>, gT
map <C-w>. gt
nmap <leader>= :tabnew<cr>
nmap <C-]> :tjump <C-R>=expand("<cword>")<CR><CR>
nmap <C-w>c :echo "no op"<CR>

" Non-regex search shortcut
nmap <Leader>s :execute '/\V' . escape(input('/'), '\\/')<CR>

" Nerd tree shortcuts
nmap <leader>nt :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFind<cr>

" Switch between .cpp and .h
nmap <leader>h :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" Quick Split
nmap <leader>s :sp<CR>
nmap <leader>v :vsp<CR>

" Quicker save
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>

" Quick unhighlight
nmap <leader>c :nohlsearch<CR>

" Toggle paste mode
set pastetoggle=<leader>p

" Remember last line, when reopening file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Highlight trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Load local config
if filereadable($HOME.'/profile/vimrc')
  source $HOME/profile/vimrc
endif

" Load host config
if filereadable($HOME.'/profile/'.$HOSTNAME.'/vimrc')
  source $HOME/profile/$HOSTNAME/vimrc
endif

set number
set incsearch
set hlsearch

" Color scheme
set background=dark
colorscheme solarized
