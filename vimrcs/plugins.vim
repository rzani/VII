set nocompatible
filetype off

set rtp+=~/.vii/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'StanAngeloff/php.vim'
Plugin 'craigemery/vim-autotag'

call vundle#end()
filetype plugin indent on


" ----------------------------------------------------
"  => Plugins settings
" ----------------------------------------------------


" -------------------> CtrlP <------------------------

" Make CtrlP more easy
nmap <C-p> :CtrlP<cr>

" Go to in the file by tag - Ctags is required
nmap <C-F> :CtrlPBufTag<cr>

" More recently used files
nmap <C-E> :CtrlPMRUFiles<cr>

" Ignore files
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'


" ----------------> NERDTree <-----------------------

" Make NERDTree easy to toggle
nmap <Leader>t :NERDTreeToggle<cr>

" Resolving conflict with vinegar
let NERDTreeHijackNetrw = 0
