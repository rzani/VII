set nocompatible
filetype off

set rtp+=~/.vii/bundle/Vundle.vim
call vundle#rc("~/.vii/bundle")
call vundle#begin()

" Vundle itself
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'craigemery/vim-autotag'

" Editor config 
Plugin 'editorconfig/editorconfig-vim'

" PHP Plugins
Plugin 'StanAngeloff/php.vim.git'                   " 

" Emmet
Plugin 'mattn/emmet-vim'

" Ultimate Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'



" Put your plugins here






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


" ----------------> PHP Syntax <---------------------

function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END


" ----------------> PHP Complete <-------------------

let g:phpcomplete_mappings = {
   \ 'jump_to_def': '<C-]>',
   \ 'jump_to_def_split': '<C-[>',
   \ 'jump_to_def_vsplit': '<C-\>',
\}

autocmd FileType php set omnifunc=phpcomplete#CompletePHP


" ----------------> Snippets  <----------------------
let g:UltiSnipsSnippetsDir = "~/.vii/snippets/UltiSnips"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
