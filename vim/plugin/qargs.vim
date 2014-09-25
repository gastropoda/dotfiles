" from http://stackoverflow.com/a/5686810/538534
"
" Usage:
"
" :Ack findme
" :Qargs
" :argdo %s/findme/replacement/gc | update
"
command! -nargs=0 -bar Qargs execute 'args ' . QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(values(buffer_numbers))
endfunction
