fu! DisableFolding()
  if !exists('w:last_fdm')
    let w:last_fdm=&foldmethod
    setl foldmethod=manual
  endif
endfu

fu! RestoreFolding()
  if exists('w:last_fdm')
    let &l:foldmethod=w:last_fdm
    unlet w:last_fdm
  endif
endfu

augroup fix_folds
  au!
  " Don't screw up folds when inserting text that might affect them, until
  " leaving insert mode. Foldmethod is local to the window. Protect against
  " screwing up folding when switching between windows.
  au InsertEnter * call DisableFolding()
  au InsertLeave,WinLeave * call RestoreFolding()
augroup END
