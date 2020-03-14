set nocompatible                                            "Latest settings

so ~/.vim/plugins.vim
let &runtimepath.=',~/.vim'
syntax enable
set number                                                  "Activate line numbers.
set relativenumber                                          "Activate relative line numbers.
set tabstop=4                                               "Show existing tab with 4 spaces width
set shiftwidth=4                                            "When indenting with '>', use 4 spaces width
set expandtab                                               "On pressing tab, insert 4 spaces
set softtabstop=4 
set backspace=indent,eol,start                              "Make backspace behave like anyother editors.
let mapleader = ','                                         "The default leader is \ but , is much better.
set showtabline=0
set autowriteall                                            "Automatically write the file when switching buffers.
set complete=.,w,b,u                                        "Set our desired autocompletion. 
set undofile

"-------------------- Search ----------------------"
set hlsearch
set incsearch
set ignorecase



"-------------------- Visuals ----------------------"
colorscheme monokai

set guifont=Tahoma
set t_CO=256                                                "Use 256 colors. This is useful for terminal Vim.
set noerrorbells visualbell t_vb=
set laststatus=2


"-------------------- Split management ----------------------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-H> <C-W><C-H>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>




"------------------- Mappings ----------------------"
"
"Open configuration files
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit $HOME/.vim/plugins.vim<cr>
nmap <Leader>es :e ~/.vim/snippets/

"Reindenting
nmap <Leader>indent ggVG=

" Execution commands
nmap <Leader>rpc :!python %<cr>
nmap <Leader>rp :!python 

"Delete previous word in insertmode
imap <C-BS> <C-W>

"Save by pressing ctrl+s
nmap <c-s>  :w<cr>
imap <c-s> <esc>:w<cr>a

"Move up and down between functions
nmap mk [m
nmap mj ]m

"Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

"Close window
"nmap <c-w> :q<cr>

"Past when press <c-v> in insert mode
imap <c-v> <c-r>* 

nmap <Leader>t :tag<space>
nmap <Leader>ct :!git ls-files \| ctags --links=no -L-<cr>

"Change bol (beggining of line), eol (end of line) keys
"nmap 8 <home>
"nmap 0 ^<esc>
"nmap 9 $<esc>
imap <c-0> <esc>^i
nmap <c-0> <esc>^i
imap <c-9> <end>
nmap <c-9> <end>
imap <c-8> <home>
nmap <c-8> <home>




"-------------------- Plugins configuration ----------------------"
"/
"/ CtrlP
"/
" Custom ignore files
let g:ctrlp_custom_ignore = '.*_env$\|vendor\|node_modules\|DS_Store\|git'

" Ignore files in gitignore if there was a git repo
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] 
"nmap <c-r> :CtrlPBufTag<cr>
nmap <c-e> :CtrlPMRUFiles<cr>

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0

"Make NERDTree easier to toggle 
nmap <c-1> :NERDTreeToggle<cr>
nmap <c-2> :NERDTreeFind<cr>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"/
"/ Greplace
"/
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"/
"/ Ag search
"/
nmap <c-f> :Ag<space>

"/
"/ python-syntax-please-everybody
"/
let g:python_highlight_all = 1 

"/
"/ python jedi
"/
"if has('python') || has('python3')
"    
"else
"    let g:jedi#auto_initialization = 0
"endif

"-------------------- Auto commands ----------------------"

"Automatically source the Vimrc file on save.
if has('autocmd')
    augroup autosourcing
        autocmd!                                        
        autocmd BufWritePost .vimrc source %
    augroup END

    augroup bells
        autocmd!
        autocmd GUIEnter * set visualbell t_vb=
    augroup End
endif


"Notes and tips
"- <c-]> to go to function definition
"- <c-^> to go to prevfile
