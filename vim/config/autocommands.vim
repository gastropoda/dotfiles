function! s:WriteTimeoutSchedule()
  if !exists("#WriteTimeout#CursorHold")
    let s:oldUpdateTime = &ut
    set updatetime=50
    augroup WriteTimeout
      au CursorHold * call s:WriteTimeoutFire()
    augroup END
    do User WriteTimeoutPre
  endif
  do User WriteTimeoutEach
endfunction

function! s:WriteTimeoutFire()
  do User WriteTimeoutPost
  au! WriteTimeout
  let &ut=s:oldUpdateTime
endfunction

augroup artm
  au!
  " Recall last location in file
  "au BufWinLeave * silent! mkview
  "au BufWinEnter * silent! loadview
  au BufWinEnter *.md if line2byte(line("$") + 1) > 3000 | syntax clear | endif
  au VimEnter * if argc() < 1 | NERDTree | endif
  au InsertEnter * silent! :set norelativenumber number
  au InsertLeave,BufNewFile,VimEnter * silent! :set relativenumber

  " support for WriteTimeout
  au BufWrite * call s:WriteTimeoutSchedule()

  " support for toucher
  au BufNew,BufRead *_spec.rb let b:touchme=1
augroup END

