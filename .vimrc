filetype off " required for multiple plugins
filetype plugin indent on 

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'altercation/vim-colors-solarized'
Plugin 'davidhalter/jedi-vim'
Plugin 'klen/python-mode'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'pangloss/vim-javascript'
Plugin '2072/PHP-Indenting-for-VIm'
" All of your Plugins must be added before the following line
call vundle#end()            " required

set backspace=indent,eol,start
set whichwrap+=<,>,[,]
set term=builtin_ansi
set clipboard=unnamedplus
set hlsearch
set number
syntax on
set background=dark
colorscheme solarized
set number

"##############################################################################                                                                         
" Easier split navigation                                                                                                                               
"##############################################################################                                                                         

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>

" setup ctrlp for faster file navigation
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
