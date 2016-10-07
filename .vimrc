call pathogen#infect()

set nocompatible
syntax on

filetype plugin indent on
filetype plugin on

set hidden
set lazyredraw
set showmode
set wildmenu

set relativenumber
set number

set backspace=2

set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set ai

let mapleader=' '

nmap <silent> <leader>ev :e $MYVIMRC<cr>
nmap <silent> <leader>sv :so $MYVIMRC<cr>

set t_Co=256
set background=dark
let g:gruvbox_italic=0
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

