filetype off " required for multiple plugins
filetype plugin indent on 

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'altercation/vim-colors-solarized'
Plugin 'davidhalter/jedi-vim'
Plugin 'junegunn/fzf.vim'
Plugin 'klen/python-mode'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'pangloss/vim-javascript'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-solidity'
Bundle 'edkolev/tmuxline.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required

let g:airline#extensions#tabline#enabled = 1

set backspace=indent,eol,start
set whichwrap+=<,>,[,]
set clipboard=unnamedplus
set hlsearch
set showcmd
set showmode
set showmatch
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set number
syntax on
set background=light

"##############################################################################                                                                         
" Easier split navigation                                                                                                                               
"##############################################################################                                                                         

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>
map  <silent> <c-w> <Plug>(expand_region_expand)
map  <silent> <c-W> <Plug>(expand_region_shrink)

" setup ctrlp for faster file navigation
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
