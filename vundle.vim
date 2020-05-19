set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim " Manage plugins with Vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'wincent/command-t'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-endwise'
Plugin 'skalnik/vim-vroom'
Plugin 'tyru/current-func-info.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'ervandew/supertab'
" Plugin 'rking/ag.vim' deprecated in favor of 'mileszs/ack.vim'
" see 'https://github.com/rking/ag.vim/issues/124#issuecomment-227038003'
Plugin 'mileszs/ack.vim' "
Plugin 'tomtom/tcomment_vim'
Plugin 'ctrlpvim/ctrlp.vim' " tag searching
Plugin 'majutsushi/tagbar' " tag searching
Plugin 'elmcast/elm-vim'
Plugin 'lambdatoast/elm.vim'
Plugin 'bronson/vim-visual-star-search' " extends '*' and '#' searching to visual selection
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular' " Aligns text within a block
Plugin 'tpope/vim-unimpaired' " Bracket navigation through file structure
Plugin 'tpope/vim-repeat' " Enable repeating supported plugin maps with '.'
Plugin 'w0rp/ale' " Replacement for syntastic, compat with vim 8
Plugin 'vim-airline/vim-airline'
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-gitgutter'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'Raimondi/delimitMate'
"Plugin 'heartsentwined/vim-emblem'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'slim-template/vim-slim'
"Plugin 'iandoe/vim-osx-colorpicker'
"Plugin 'mustache/vim-mustache-handlebars'
call vundle#end()
filetype plugin indent on
syntax enable
