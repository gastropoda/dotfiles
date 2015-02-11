" autocommands to run after the plugins'
fu! s:RecallLastPosition()
  if line("'\"") > 0 && line("'\"") <= line("$")
    exe "normal g'\""
  endif
endfu

function! s:StartAppendingToMessage()
  exe "normal gg"
  " startinsert!
endfunction

augroup artm
  au BufReadPost * call s:RecallLastPosition()
  au BufReadPost,FileReadPost COMMIT_EDITMSG call s:StartAppendingToMessage()
augroup END
