StopUnlessHavePlugin
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
let g:ctrlp_max_height = 30
let g:ctrlp_reuse_window = 'help\|quickfix'
let g:ctrlp_open_multiple_files = 'tjr'
let g:ctrlp_arg_map = 1

nmap <Leader>p :CtrlP<CR>
nmap <Leader>b :CtrlPBuffer<CR>
nmap <Leader>d :exec ":CtrlP " . expand('%:h')<CR>

" alternative key bindings
let g:ctrlp_prompt_mappings = {
      \ 'AcceptSelection("h")': ['<c-h>'],
      \ 'AcceptSelection("e")': ['<cr>', '<space>'],
      \ }

call ctrlp_bdelete#init()
