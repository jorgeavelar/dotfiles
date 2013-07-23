syntax on
set number
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'git://git.wincent.com/command-t.git'
"Bundle 'git://git.scrooloose/nerdtree.git'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'flazz/vim-colorschemes'

filetype plugin indent on


set title
set showcmd
set clipboard=unnamed
set wildmenu
set esckeys

set ttyfast
set gdefault
set encoding=utf-8 nobomb

set tabstop=2
set shiftwidth=2
set expandtab

set binary
set noeol
set modeline
set exrc
set secure
set cursorline

set hlsearch
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set noerrorbells
set nostartofline
set ruler
set shortmess=atI
set showmode
set t_Co=256

let mapleader=","
let g:rehash256 = 1

set backupdir=~/.vim/backups
set directory=~/.vim/swaps

if exists("&undodir")
  set undodir=~/.vim/undo
endif

noremap <leader>W :w !sudo tee % > /dev/null<CR>

if has("autocmd")
  filetype on
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif

colorscheme molokai
set background=dark
