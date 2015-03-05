function! s:ShouldTouch()
  let path=bufname("%")
  let justSaved = index(s:ToucherSeen, path) >= 0
  let visible = bufwinnr("%") > -1
  let wantsIt = exists("b:touchme") && b:touchme
  return !justSaved && !&modified && visible && wantsIt
endfunction

function! s:Touch()
  mkview
  bufdo if s:ShouldTouch() | noautocmd w | endif
  loadview
endfunction

aug Toucher
  au!
  au User WriteTimeoutPre let s:ToucherSeen = []
  au User WriteTimeoutEach call add(s:ToucherSeen, bufname("%"))
  au User WriteTimeoutPost noautocmd call s:Touch()
aug END
