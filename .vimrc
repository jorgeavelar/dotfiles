syntax on
filetype on
filetype indent on
filetype plugin on

set nowrap
set number
set nocompatible
set background=light
set list

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'elixir-lang/vim-elixir'
Plugin 'mattn/emmet-vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'flazz/vim-colorschemes'

Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'

Plugin 'bfrg/vim-cpp-modern'
Plugin 'octol/vim-cpp-enhanced-highlight'

"python sytax checker
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'ocaml/vim-ocaml'

Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rake'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'elzr/vim-json'
Bundle 'honza/vim-snippets'
Bundle 'tpope/vim-markdown'
Bundle 'airblade/vim-gitgutter'
Bundle 'takac/vim-fontmanager'

let g:rainbow_active = 1
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let NERDTreeIgnore = ['\.pyc$', '\~$'] 

set title
set showcmd
set clipboard=unnamed
set wildmenu
set esckeys
set textwidth=80
set ttyfast
set gdefault
set encoding=utf-8 nobomb
set binary
set noeol

" set modeline
set exrc
set secure
set nocursorline

set gfn=Monaco\ 10

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

let NERDTreeShowHidden=1

highlight VertSplit ctermfg=None ctermbg=None cterm=None

let g:user_emmet_mode='n'
let g:user_emmet_mode='inv'
let g:user_emmet_mode='a'

set backupdir=~/.vim/backups
set directory=~/.vim/swaps

if exists("&undodir")
  set undodir=~/.vim/undo
endif

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

map <C-n> :NERDTreeToggle<CR>
nmap <silent> <special> <C-n> :NERDTreeToggle<RETURN>
let NERDTreeHighlightCursorline=0

noremap <leader>W :w !sudo tee % > /dev/null<CR>

if has("autocmd")
  filetype on
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  set shiftwidth=2 tabstop=2 expandtab
endif

""" Python PEP 8
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

highlight BadWhitespace ctermbg=red guibg=red

au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

let python_highlight_all=1

autocmd FileType python set autoindent
set backspace=indent,eol,start
autocmd FileType python set foldmethod=indent
nnoremap <space> za 
"""

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
   exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
   exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

hi tsxTagName guifg=#E06C75

hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575
hi tsxAttrib guifg=#F8BD7F cterm=italic
hi tsxTypeBraces guifg=#999999
hi tsxTypes guifg=#666666
hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66