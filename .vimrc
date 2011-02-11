call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on

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

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

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

" toggle NERDTree with \n
nnoremap <leader>n :NERDTreeToggle<cr>

" toggle Command-T with \v
nnoremap <leader>v :CommandT<cr>
nmap <F5> :CommandTFlush<CR>

" ruby
autocmd FileType ruby,eruby,cucumber set expandtab tabstop=2 shiftwidth=2 tabstop=2
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" enable syntax highlighting
syntax on
set bg=dark

" enable 256 color terminal
set t_Co=256

" always show the menu, insert longest match
set completeopt=menuone,longest

" bash-like tab completion
set wildmode=longest,list,full

" statusline
set statusline=%t%m%r\ %{fugitive#statusline()}%=[%{&ff}%Y]\ [%04l,%04v,%p%%]
set laststatus=2

" movement by screenline instead of file line
nnoremap j gj
nnoremap k gk
nnoremap <Up> gj
nnoremap <Down> gk
