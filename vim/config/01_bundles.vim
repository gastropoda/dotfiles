set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
let g:neobundle_default_git_protocol='git'
NeoBundleFetch 'Shougo/neobundle.vim'
if v:version >= 704 && has('lua')
  NeoBundle 'Shougo/neocomplete.vim'
else
  NeoBundle 'Shougo/neocomplcache.vim'
endif
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'gastropoda/nerdtree'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'onemanstartup/vim-slim'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'evanmiller/nginx-vim-syntax'
NeoBundle 'alunny/pegjs-vim'
call neobundle#end()
NeoBundleCheck
