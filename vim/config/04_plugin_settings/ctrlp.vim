StopUnlessHavePlugin
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
