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

"You can use this plugin to show :help doc in Chinese
Plug 'yianwillis/vimcdoc'

Plug 'Yggdroot/indentLine'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'


call plug#end()


"=======================
"========SETTING========
"=======================

let g:airline_theme='base16_nord'
lang zh_TW.UTF-8
syntax enable
colorscheme plumage
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax on
language C
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
"Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'desertink'
nmap e <Plug>AirlineSelectPrevTab
nmap E <Plug>AirlineSelectNextTab
let g:airline_powerline_fonts = 1
"Nerdtree settings
"autocmd vimenter * NERDTree 
"autocmd vimenter * if !argc()|NERDTree|endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI = 0
let NERDTreeDirArrows = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',}
let NERDTreeShowBookmarks=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

"Bartab settings
" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" New tabs are opened next to the currently selected tab.
" Enable to insert them in buffer number order.
let bufferline.add_in_buffer_number_order = v:false

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable current/total tabpages indicator (top right corner)
let bufferline.tabpages = v:true

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Excludes buffers from the tabline
let bufferline.exclude_ft = ['javascript']
let bufferline.exclude_name = ['package.json']

" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
let bufferline.icons = v:true

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" If true, new buffers will be inserted at the start/end of the list.
" Default is to insert after current buffer.
let bufferline.insert_at_start = v:false
let bufferline.insert_at_end = v:false

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 4

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is "[Buffer X]"
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = v:null


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
            \ '                -Ver. 0.0.1-           /\   /\\_  _\/\/\                ',
            \ '                                       \ \_/ / / / /    \              ',
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
