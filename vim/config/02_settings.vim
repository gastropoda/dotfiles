set nocompatible
set backspace=indent,eol,start " sane backspacing
set hidden " don't complain when hiding modified buffers
set ts=2 sts=2 sw=2 expandtab " default indentation settings
set showcmd " Show (partial) command in the status line
set foldmethod=marker foldlevelstart=99
set switchbuf=useopen " buffer switching behaviour
set autowrite autoread
set hlsearch incsearch ignorecase smartcase
noh " don't highlight search after sourcing this file
set wildmode=list:longest,list:full wildmenu
set wildignore+=*.o,*.obj,*.rbc,*.class,.git/*,vendor/*,node_modules/*,tmp/*,bower_components/*
set laststatus=2
set stl=%f%(\ \|\ %Y%)%(\ \|\ %M%R%)%=\|\ B:%n\ %p%%\ %3l/%L\ %c\ \|
set modeline modelines=10
set exrc " load local .vimrc
set mouse=a
" directories for backup and swpfiles
set backupdir=~/.vim/backup directory=~/.vim/backup backupcopy=yes
behave xterm " traditional visual mode
set cursorline cursorcolumn
if has('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif
set diffopt=filler,vertical
set list
set listchars=tab:›\ ,eol:¬,trail:·
set viewoptions=folds
let mapleader = " "
filetype plugin indent on
set number
if exists("&relativenumber")
  set relativenumber
endif
if has('arabic')
  " this makes pasting painful
  set noarabicshape
endif

