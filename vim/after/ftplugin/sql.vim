" I don't like these
vunmap <buffer> <enter>
nunmap <buffer> <enter>
nunmap <buffer> <leader><enter>

vnoremap <buffer> <leader>q :SimpleDBExecuteSql<cr>
nnoremap <buffer> <leader>qa m':SimpleDBExecuteSql <cr>g`'
nnoremap <buffer> <leader>qq m':'{,'}SimpleDBExecuteSql<cr>g`'
