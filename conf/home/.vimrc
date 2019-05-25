set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

" so ~/plugins.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'

call vundle#end()            " required
filetype plugin indent on    " required

set number
set hidden
let g:racer_cmd = "~/.cargo/bin/racer"
