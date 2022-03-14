"[[[THE PlumageVim SET UP]]] v.0.0.1
"Setings by Dr.βQ (Studio WhirlingPlumage)

"This is the PlumageVim set up document init.vim. for Neovim.(python3 needed)
"To use the set up, simply replace the init.vim in the path.
"Open Neovim and run PlugInstall to install all the plugins in the set up.

"This set up is now only for Julia language support.
"press <F1> to enter ||--|  H-split mode
"press <F2> to enter |||| V-split mode

"=========================
"===PLUGIN INSTALLATION===
"=========================
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-startify'
Plug 'Raimondi/delimitMate'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'axvr/zepl.vim'
Plug 'haishanh/night-owl.vim'
Plug 'Shougo/neocomplcache'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'famiu/nvim-reload'
Plug 'nvim-lua/plenary.nvim'
Plug 'arcticicestudio/nord-vim'

call plug#end()

"=======================
"========SETTING========
"=======================

let g:airline_theme='base16_nord'

syntax enable
colorscheme plumage
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax on
language C
set encoding=utf-8
set nocompatible
filetype on
filetype indent on
filetype plugin on
set number
set mouse=a
let &t_ut=''
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set laststatus=2
set guifont=Hack:h12:cANSI:qDRAFT
set cursorline
set cursorcolumn
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
inoremap <C-l> <Right>

" 1. vscode defult 2. author defult 3. vscode show
	\	'guifgs': ['#B21212', '#1B9CED','#FFFC00'],
"	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
"	\	'guifgs': ['#C186BF', '#268EDB','#F79318'],
	let g:rainbow_conf = {
	\	'guifgs': ['#C186BF', '#268EDB','#F79318'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}
let g:rainbow_active = 1

let g:startify_custom_header = [
            \ '            ____ _                                                          ',
            \ '           / _  \ |_   _ _ __ ___   __ _  ____  ___                        ',
            \ '          / /_) / | | | | `_ ` _ \ / _` |/ _  \/ _ \                       ',
            \ '         / ____/| | |_| | | | | | | (_| | (_| |  __/                         ',
            \ '        / /     |_|\__._|_| |_| |_|\__,_|\__, /\___)                       ',
            \ '        \/                               |___/_____                      ',
            \ '                                       /\   /\\_  _\/\/\                ',
            \ '                -Ver. 0.0.1-           \ \_/ / / / /    \              ',
            \ '            * Settings by Dr.βQ *       \   /_/ /_/ /\/\ \              ',
            \ '         @  WhirlingPlumage Studio @     \_/\____/\/    \/             ',
            \ '                                                                  ',
            \ '                                                                  ',
            \]
let g:startify_custom_footer = [
            \ '',
            \ '+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+',
            \ '|   Art is a Science of Showing Imperfection with Perfection.    |',
            \ '|                                                                |',
            \ '|    Science is an Art of Seeking Perfection in Imperfection.    |',
            \ '+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+',
            \ '           Supported Languages:   ',
            \ '               ## Julia language Repl supported   ',
            \ '                      ',
            \ '           Usage:    ',
            \ '               press <F1> to enter ||--|  H-split mode',
            \ '               press <F2> to enter |||| V-split mode',
            \ '                                                    ',
            \ '           Origin based on NeoVim   ',
            \ '           The WPVIM is NOT a VIM distribution.  ',
            \ '           It is just for FUN!! XD   ',
            \]
let g:startify_files_number = 5
"let g:startify_custom_indices = map(range(1,100), 'string(v:val)')

set nocompatible
filetype off
let &runtimepath.=',~/.vim/bundle/neoterm'
filetype plugin on
au VimEnter,BufRead,BufNewFile *.jl set filetype=julia
silent! helptags ALL
filetype plugin indent on

if (has("termguicolors"))
 set termguicolors
endif

let g:lightline = { 'colorscheme': 'nightowl' }

runtime zepl/contrib/nvim_autoscroll_hack.vim


"=======================
"==========MAPS=========
"=======================
let mapleader = "\<space>"
map <c-j>j :hide Repl julia<CR>
map uh :unhide<CR>
map <c-j>b :set browsedir=buffer<CR>
map <leader>rs :resize 30<CR>
map <F1> <c-j>juh<F5><c-w>w<c-j>b<leader>rs
map <F2> <c-j>juh<F5><c-w>w<c-w>w<c-j>b<c-w>L<c-w>w<c-w>w<c-w>10<s->>
map rc : e $HOME\_vimrc<CR>
map <leader>S :source $MYVIMRC
map plin :PlugInstall<CR>
map <F5> :NERDTreeToggle<CR>
map r<CR> gggzG
map <s-r> gzz
map rr gzip
map zeh :help zepl.txt<CR>
map <leader>v "+p
map <leader>c "+y
map <leader>i gI
map <leader>/ gI#
map <leader><leader>s :e $MYVIMRC<CR>
map <leader>r :Reload<CR>
map S : w<CR>
map s <nop>
map Q :q<CR>
map R :source $MYVIMRC<CR>
noremap <LEADER><CR>  :nohlsearch<CR>
