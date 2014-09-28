fu! s:RecallLastPosition()
  if line("'\"") > 0 && line("'\"") <= line("$")
    exe "normal g'\""
  endif
endfu

fu! s:NerdTreeUnlessArgs()
  if argc() < 1
    NERDTree
  endif
endfu

fu! s:NoColorOnLargeFiles()
  if line2byte(line("$") + 1) > 3000
    syntax clear
  endif
endfu

augroup artm
  au!
  " Recall last location in file
  au BufReadPost * call s:RecallLastPosition()
  au BufReadPost COMMIT_EDITMSG norm gg$
  au BufWinLeave * silent! mkview
  au BufWinEnter * silent! loadview
  au BufWinEnter *.md call s:NoColorOnLargeFiles()
  au VimEnter * call s:NerdTreeUnlessArgs()
  au InsertEnter * silent! :set norelativenumber number
  au InsertLeave,BufNewFile,VimEnter * silent! :set relativenumber
augroup END

