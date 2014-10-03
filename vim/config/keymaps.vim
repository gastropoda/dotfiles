" Base keymaps
"
" There are others in
"
"   ~/.vim/config/04_plugin_settings/*.vim
"   ~/.vim/config/keymaps_*.vim
"   ~/.vim/after/plugin/keymaps.vim
" ...
"
" and maybe more

" change to the current file path
map <Leader>cd :lcd <C-R>=expand("%:p:h") . "/" <CR><CR>
" splitting like in my tmux
nmap <C-w>- :split<CR>
nmap <C-w>\| :vert split<CR>
" focus folding on current line
nmap zf zMzv
nmap <Leader><Leader> :e#<CR>
nmap # :silent! set relativenumber!<CR>
nmap <Leader>t :tab new<CR>
