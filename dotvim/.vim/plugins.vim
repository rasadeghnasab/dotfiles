filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'preservim/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
"It needs to 'the_sliver_search' package be installed on your machin
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'vim-python/python-syntax'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'craigemery/vim-autotag'
Plugin 'Raimondi/delimitMate'
Plugin 'sjl/gundo.vim'
"'luochen1990/rainbow'
Plugin 'mattn/emmet-vim'
"'jamessan/vim-gnupg'

" FZF
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Languages
Plugin 'c9s/cpan.vim'
Plugin 'moznion/vim-cpanfile'
Plugin 'vim-perl/vim-perl'
Plugin 'vim-perl/vim-perl6'
Plugin 'hokaccha/vim-prove'
Plugin 'fatih/vim-go', { 'tag' : 'v1.15' }
Plugin 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plugin 'pangloss/vim-javascript'
Plugin 'ternjs/tern_for_vim'
Plugin 'moll/vim-node'
Plugin 'digitaltoad/vim-pug'
Plugin 'avakhov/vim-yaml'
Plugin 'rstacruz/vim-hyperstyle'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'jceb/vim-orgmode'
Plugin 'davidhalter/jedi-vim'
Plugin 'junegunn/limelight.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'tomlion/vim-solidity'                   "Vim syntax file for solidity

call vundle#end()            " required
filetype plugin indent on    " required


