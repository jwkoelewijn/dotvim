call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on
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
