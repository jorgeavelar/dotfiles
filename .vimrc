execute pathogen#infect()

syntax on
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
colorscheme monokai

set number
set nocompatible
set background=dark

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'danchoi/ri_vim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'slim-template/vim-slim'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'Blackrush/vim-gocode'
Bundle 'derekwyatt/vim-scala'
Bundle 'elzr/vim-json'
Bundle 'honza/vim-snippets'
Bundle 'guns/vim-clojure-static'
Bundle 'guns/vim-clojure-highlight'
Bundle 'tpope/vim-liquid'
Bundle 'tpope/vim-markdown'
Bundle 'psykidellic/vim-jekyll'
Bundle 'digitaltoad/vim-jade'
Bundle 'airblade/vim-gitgutter'
Bundle 'takac/vim-fontmanager' 
Bundle 'jQuery'

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
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_signs = 1
let g:fontman_style = "bold"
let NERDTreeShowHidden=1

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

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

