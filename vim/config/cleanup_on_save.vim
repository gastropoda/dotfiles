function! s:strip()
  if exists("b:dont_strip")
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

if has("autocmd")
  augroup stripper
    au!
    au BufReadPost * call s:protect_broken_files()
    au BufWritePre * call s:strip()
  augroup END
end
