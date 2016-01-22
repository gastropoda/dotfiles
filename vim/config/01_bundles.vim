set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
let g:neobundle_default_git_protocol='git'
NeoBundleFetch 'Shougo/neobundle.vim'
if v:version >= 704 && has('lua')
  NeoBundle 'Shougo/neocomplete.vim'
else
  NeoBundle 'Shougo/neocomplcache.vim'
endif
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'd11wtq/ctrlp_bdelete.vim'
NeoBundle 'albfan/ag.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'onemanstartup/vim-slim'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'evanmiller/nginx-vim-syntax'
NeoBundle 'alunny/pegjs-vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'Wolfy87/vim-enmasse'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'ivalkeen/vim-simpledb'
call neobundle#end()
NeoBundleCheck
