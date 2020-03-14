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
Plugin 'vim-perl/vim-perl'
Plugin 'vim-python/python-syntax'
"Plugin 'davidhalter/jedi-vim'

call vundle#end()            " required
filetype plugin indent on    " required


