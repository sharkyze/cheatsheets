
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'hdima/python-syntax'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on

set t_Co=256
colorscheme desert

set smartindent
set expandtab

autocmd FileType html set tabstop=2|set shiftwidth=2
autocmd FileType python set tabstop=4|set shiftwidth=4

" alternative
set tabstop=4
set shiftwidth=4

set nu
"set relativenumber
set hlsearch

set backspace=2

let g:syntastic_python_checkers = ['flake8', 'pylint', 'pep8']
let g:syntastic_python_flake8_post_args='--ignore=E501'

autocmd BufWritePre * :%s/\s\+$//e

syntax on

com! PrettyJson %!python -m json.tool

