" change to the current file path
map <Leader>cd :lcd <C-R>=expand("%:p:h") . "/" <CR><CR>
" splitting like in my tmux
nmap <C-w>- :split<CR>
nmap <C-w>\| :vert split<CR>

nmap <C-w>[ :tabN<CR>
nmap <C-w>] :tabn<CR>
" focus folding on current line
nmap zf zMzv
nmap <Leader><Leader> :e#<CR>
