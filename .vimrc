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
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'kern/vim-es7'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'othree/yajs.vim'
call vundle#end()
execute pathogen#infect()
filetype plugin indent on

set expandtab tabstop=2 softtabstop=0 shiftwidth=2 smarttab hlsearch splitbelow splitright
set smartindent autoindent
set noswapfile
syntax on
colo slate
highlight Search cterm=underline

" for ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zi,*/node_modules/*,*/bower_components/*,*.class

let mapleader = ' '
nnoremap <leader>e :Explore
nnoremap <leader>q :q
nnoremap <leader>w :w
nnoremap <leader>s :sp
nnoremap <leader>v :vsp
nnoremap <leader>t :tabe
nnoremap <leader>r :syntax sync minlines=2000
nnoremap <leader>n :noh

au BufNewFile,BufRead *.jbuilder set ft=ruby
au BufNewFile,BufRead *Thorfile set ft=ruby
au BufNewFile,BufRead *Fastfile set ft=ruby
au BufNewFile,BufRead *.slim set ft=slim
au BufNewFile,BufRead *.es6 set ft=javascript
au BufNewFile,BufRead *Jenkinsfile set ft=javascript
au BufNewFile,BufRead *.hbs set ft=html
au BufNewFile,BufRead *.java set noexpandtab
