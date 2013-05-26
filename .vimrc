set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" required!
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'godlygeek/tabular'
Bundle 'groenewege/vim-less'
Bundle 'elzr/vim-json'
Bundle 'jgdavey/vim-blockle'
Bundle 'kana/vim-textobj-user'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdtree'
Bundle 'sickill/vim-pasta'
Bundle 'timcharper/textile.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-vividchalk'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/Gist.vim'
Bundle 'vim-scripts/IndexedSearch'
Bundle 'vim-scripts/jQuery'
Bundle 'vim-scripts/bash-support.vim'
Bundle 'depuracao/vim-rdoc'
Bundle 'Lokaltog/vim-powerline'
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-rbenv'
Bundle 'tpope/vim-bundler'
Bundle 'airblade/vim-gitgutter'
Bundle 'tsaleh/vim-shoulda'
Bundle 'Valloric/YouCompleteMe'
Bundle 'tpope/vim-rake'
Bundle 'rking/ag.vim'
Bundle 'jnwhiteh/vim-golang'


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
" call pathogen#incubate()

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

