set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'w0rp/ale'
Plugin 'elixir-lang/vim-elixir'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-fugitive'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'slim-template/vim-slim.git'
Plugin 'posva/vim-vue'
Plugin 'wavded/vim-stylus'
Plugin 'slime-lang/vim-slime-syntax'

call vundle#end()
filetype plugin indent on

let g:ale_linters = {
  \ 'javascript': [],
  \ }

set expandtab tabstop=2 softtabstop=0 shiftwidth=2 smarttab hlsearch splitbelow splitright
set smartindent autoindent
syntax on
colo slate

let mapleader = ' '
nnoremap <leader>e :e **/*
nnoremap <leader>s :sp **/*
nnoremap <leader>v :vsp **/*
nnoremap <leader>t :tabe **/*
nnoremap <leader>r :syntax sync minlines=2000

au BufNewFile,BufRead *.json.jbuilder set ft=ruby
