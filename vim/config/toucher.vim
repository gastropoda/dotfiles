" This construct will touch some unmodified files each time one or several
" files are written. this allows maintaining a dynamic subset of tests to
" rerun on each save in addition to the ones that will be triggered by other
" means.
" 
" A file will be touched if:
" - it wasn't just written during this 'save butch'
" - it isn't modified: if i didn't request saving it then I really mean it
" - it is visible (has open window somewhere): hidden buffers have lost my
"   attention
" - it has truthy `b:touchme` variable: this way deciding what needs touching
"   is decoupled from the touching mechanism

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
