set nocompatible
" temporary
filetype off

" bootstrap vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'kien/ctrlp.vim'
Plugin 'd11wtq/ctrlp_bdelete.vim'
Plugin 'albfan/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'onemanstartup/vim-slim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Wolfy87/vim-enmasse'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'ivalkeen/vim-simpledb'
Plugin 'nicklasos/vim-jsx-riot'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'fatih/vim-go'
call vundle#end()
