set nocompatible
set number
syntax on
set title
set showcmd
set clipboard=unnamed
set wildmenu
set esckeys
set backspace=indent,eol,start
set ttyfast
set gdefault
set encoding=utf-8 nobomb

set binary
set noeol
set modeline
set modelines=4
set exrc
set secure
" set cursorline

set tabstop=2
set shiftwidth=2
set expandtab

set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
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

" Load bundles
call pathogen#incubate()

let mapleader=","

set backupdir=~/.vim/backups
set directory=~/.vim/swaps

if exists("&undodir")
  set undodir=~/.vim/undo
endif

noremap <leader>W :w !sudo tee % > /dev/null<CR>

if has("autocmd")
  " Enable file type detection
  filetype on
  " Treat .json files as .js
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif

