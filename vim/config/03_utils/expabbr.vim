function! ExpAbbr(lhs, rhs)
  if getcmdtype() !=# ":" | return a:lhs | endif
  let l:lhcmd = strpart(getcmdline(), 0, getcmdpos())
  return (l:lhcmd =~ '^\A*'.a:lhs.'$' ? a:rhs : a:lhs)
endfunction
