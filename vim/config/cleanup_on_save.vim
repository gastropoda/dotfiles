function! s:strip()
  if exists("b:dont_strip") && b:dont_strip != 0
    return
  endif
  let l:winview = winsaveview()
  silent! %s/\s\+$//
  call winrestview(l:winview)
endfunction

function! s:protect_broken_files()
  if search("\\s$")
    let b:dont_strip=1
  endif
endfunction

function! s:enable_tabs_if_present()
  if search("\\t")
    setl noexpandtab
  endif
endfunction

if has("autocmd")
  augroup stripper
    au!
    au BufReadPost * call s:protect_broken_files()
    au BufReadPost * call s:enable_tabs_if_present()
    au BufWritePre * call s:strip()
  augroup END
end
