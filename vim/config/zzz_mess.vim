" Figitive {{{
if HasPlugin('fugitive.vim')
endif
" }}}
" CtrlP {{{
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
let g:ctrlp_max_height = 20
let g:ctrlp_reuse_window = 'help\|quickfix'
let g:ctrlp_open_multiple_files = '2vjr'
let g:ctrlp_arg_map = 1
nmap <C-B> :CtrlPBuffer<CR>
nmap <Leader><C-P> :exec ":CtrlP " . expand('%:h')<CR>
" alternative key bindings
let g:ctrlp_prompt_mappings = {
      \ 'AcceptSelection("h")': ['<c-h>'],
      \ }
" }}}
" color settings {{{
let g:light_scheme='artm_light'
let g:dark_scheme='artm_dark'
nmap <Leader>cc :ToggleScheme<CR>
syntax enable
" }}}
" neo complcache {{{
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#max_list = 10
let g:neocomplete#max_keyword_width = 20
let g:neocomplete#auto_completion_start_length = 3
let g:neocomplete#manual_completion_start_length = 2
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#enable_auto_select = 0

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()

inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" }}}

" neo snippet {{{
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

" }}}
" }}}

" asshole vim uber user {{{
noremap <Left>   <NOP>
noremap <Right>  <NOP>
noremap <Up>     <NOP>
noremap <Down>   <NOP>
inoremap <Left>   <NOP>
inoremap <Right>  <NOP>
inoremap <Up>     <NOP>
inoremap <Down>   <NOP>
nnoremap <Left>  :echo 'Use "h"'<CR>
nnoremap <Right> :echo 'Use "l"'<CR>
nnoremap <Up>    :echo 'Use "k"'<CR>
nnoremap <Down>  :echo 'Use "j"'<CR>
" }}}

