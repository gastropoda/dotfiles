let s:Path = g:NERDTreePath

function! NERDTreeTouchNode_artm()
  let currentNode = g:NERDTreeFileNode.GetSelected()
  silent exec "!touch " . currentNode.path.str()
  redraw!
endfunction

call NERDTreeAddMenuItem({
      \ 'text': '(t)ouch',
      \ 'shortcut': 't',
      \ 'callback': 'NERDTreeTouchNode_artm'
      \ })

