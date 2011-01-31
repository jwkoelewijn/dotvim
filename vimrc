syntax on
colorscheme torte
set ts=2 sw=2 sts=2 expandtab
set autoindent
set number
set invlist
set listchars=tab:▸\ ,eol:¬
set undofile

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
