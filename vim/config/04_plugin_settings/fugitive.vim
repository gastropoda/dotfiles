StopUnlessHavePlugin

function! s:GitStatusEx()
  if exists(":Gstatus")
    Gstatus
  elseif filereadable(".git/index")
    exec "new .git/index"
  else
    echom "Can't find git repository"
  endif
endfunction

command! MyGstatus call s:GitStatusEx()

nmap <Leader>g :MyGstatus<CR>

cnorea <expr> git ExpAbbr("git", "Git")
