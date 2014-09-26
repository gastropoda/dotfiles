StopUnlessHavePlugin
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
vmap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"let g:endwise_no_mappings=1
function! CleverCr()
  if pumvisible()
    if neosnippet#expandable()
      let exp = "\<Plug>(neosnippet_expand)"
      return exp . neocomplete#close_popup()
    else
      return neocomplete#close_popup()
    endif
  else
    return "\<C-j>"
  endif
endfunction
imap <expr> <C-j> CleverCr()

if has('conceal')
  set conceallevel=2 concealcursor=i
endif
let g:neosnippet#snippets_directory = '~/.vim/snippets'
