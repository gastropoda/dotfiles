StopUnlessHavePlugin

function! s:NERDTreeVisible()
  for i in tabpagebuflist()
    if bufname(i) =~ '^NERD_tree_\d\+'
      return 1
    endif
  endfor
  return 0
endfunction

command! NERDTreeFindOrHide if s:NERDTreeVisible() | NERDTreeClose | else | NERDTreeFind | endif

let g:NERDTreeMapOpenSplit='h'
let g:NERDTreeMapOpenVSplit='v'
map <Leader>n :NERDTreeFindOrHide<CR>
