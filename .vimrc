set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-fugitive'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'slim-template/vim-slim.git'
Plugin 'wavded/vim-stylus'
Plugin 'slime-lang/vim-slime-syntax'
Plugin 'kern/vim-es7'
Plugin 'othree/yajs.vim'

call vundle#end()
filetype plugin indent on

set expandtab tabstop=2 softtabstop=0 shiftwidth=2 smarttab hlsearch splitbelow
set smartindent autoindent
syntax on
colo slate

set noswapfile

let mapleader = ' '

nnoremap <leader>e :e **/*
nnoremap <leader>v :vsp **/*
nnoremap <leader>s :sp **/*
nnoremap <leader>t :tabe **/*
nmap j gj
nmap k gk

au BufNewFile,BufRead *.json.jbuilder set ft=ruby
