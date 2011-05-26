call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on

" Who's our leader?
let mapleader=","

set nocompatible
filetype indent plugin on

colorscheme torte
set ts=2 sw=2 sts=2 expandtab
set autoindent
set number
set invlist
set listchars=tab:▸\ ,eol:¬
set undofile
set incsearch

nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Visually select the text that was last edited/pasted
nmap gV `[v`]

" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

 " enable matchit for vim-textobj-rubyblock plugin
 runtime macros/matchit.vim

" toggle NERDTree with \s
nnoremap <leader>s :NERDTreeToggle<cr>

" toggle Command-T with \v
nnoremap <leader>v :CommandT<cr>
nmap <F5> :CommandTFlush<CR>
let g:CommandTMaxFiles=100000

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" ruby
autocmd FileType ruby,eruby,cucumber set expandtab tabstop=2 shiftwidth=2 tabstop=2
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" enable syntax highlighting
syntax on
set bg=dark

" always show the menu, insert longest match
set completeopt=menuone,longest

" bash-like tab completion
set wildmode=longest,list,full

" Status line
set laststatus=2
set statusline=%F%m%r%h%w%=[%{&ff}]%y[%p%%][line\ %l\/%L,\ col\ %c]
"              | | | | | |  |      |  |           |   |         |
"              | | | | | |  |      |  |           |   |         + current column
"              | | | | | |  |      |  |           |   +-- total number of lines
"              | | | | | |  |      |  |           +-- current line 
"              | | | | | |  |      |  +-- current % into file
"              | | | | | |  |      +-- current syntax in square brackets
"              | | | | | |  +-- current fileformat
"              | | | | | +-- align right
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer

" movement by screenline instead of file line
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

" Split window
nnoremap <Leader>h <C-w>s<C-w>j
nnoremap <Leader>v <C-w>v<C-w>l

" Switch window positions
nnoremap <Leader>X <C-w>x

" Close window
nnoremap <Leader>x <C-w>c

" Navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" No bells and whistles
set novisualbell  " No blinking
set noerrorbells  " No noise

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Time to wait after ESC (default causes an annoying delay)
set timeoutlen=250

" We have a fast terminal connection
set ttyfast
" Enable the use of a mouse from a terminal
set mouse=a

" Saving, undoing, backups & files
set backup                     " Enable creation of backup file.
set backupdir=~/.vim-local/backups " Where backups will go.
set directory=~/.vim-local/tmp     " Where temporary files will go.
set undodir=~/.vim-local/undo
set undofile
set undolevels=1000
set undoreload=10000
au FocusLost * :wa

" Edit vimrc
nnoremap <Leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <Leader>rr :source $MYVIMRC<cr>

" No pipes in vertical split separators.
set fillchars=vert:\ 

" Highlight current column and line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline nocursorcolumn
set cursorline nocursorcolumn

" Add Gundo key mapping
nnoremap <Leader>G :GundoToggle<CR>
