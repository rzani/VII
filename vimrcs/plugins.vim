set nocompatible
filetype off

set rtp+=~/.vii/bundle/Vundle.vim

call vundle#rc("~/.vii/bundle")
call vundle#begin()

" Vundle itself
Plugin 'VundleVim/Vundle.vim'

"Git plugin
Plugin 'tpope/vim-fugitive'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'ervandew/supertab'
Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'craigemery/vim-autotag'

" Editor config 
Plugin 'editorconfig/editorconfig-vim'

" PHP Plugins
Plugin 'scrooloose/syntastic'
Plugin 'shawncplus/phpcomplete.vim'

" Emmet
Plugin 'mattn/emmet-vim'

" Ultimate Snippets
Plugin 'ervandew/snipmate.vim'

" Surrounding text
Plugin 'tpope/vim-surround' 

" Airline
Plugin 'vim-airline/vim-airline'

" Improve search
Plugin 'rking/ag.vim'

" Improve replace
Plugin 'skwp/greplace.vim'

" Multiple Line Cursos
Plugin 'terryma/vim-multiple-cursors'

" Make it simplet to comment
Plugin 'scrooloose/nerdcommenter'

" Automatically close quotes
Plugin 'Townk/vim-autoclose'

" Blade template
Plugin 'jwalton512/vim-blade'




" Put your plugins here






call vundle#end()
filetype plugin indent on


" ----------------------------------------------------
"  => Plugins settings
" ----------------------------------------------------


" -------------------> CtrlP <------------------------

" Make CtrlP more easy
let g:ctrlp_map = '<c-p>'

" Go to in the file by tag - Ctags is required
nmap <C-F> :CtrlPBufTag<cr>

" More recently used files
nmap <C-E> :CtrlPMRUFiles<cr>

" Make ir easy to open buffers
nmap <C-B> :CtrlPBuffer<cr>

" Ignore files
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'


" ----------------> NERDTree <-----------------------

" Make NERDTree easy to toggle
nmap <Leader>t :NERDTreeToggle<cr>

" Resolving conflict with vinegar
let NERDTreeHijackNetrw = 0
let NERDTreeShowBookmarks=1


" ------------------> Emmet <------------------------
let g:user_emmet_mode='i'


" ----------------> PHP Complete <-------------------

autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

set completeopt=longest,menuone


" ----------------> Syntastic  <----------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_aggregate_errors = 1                    " display all errors from all checkers together
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" ----------------------------------------------------
"  => Snippets
" ----------------------------------------------------

nmap <Leader>es :e ~/.vii/snippets<cr>


" ----------------------------------------------------
"  => Airline
" ----------------------------------------------------

" Automatically displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1

" the separator used on the left side >
" let g:airline_left_sep=''

" the separator used on the right side >
" let g:airline_right_sep=''

" Always show it
set laststatus=2

" Using powerline fonts
let g:airline_powerline_fonts = 1


" ----------------------------------------------------
"  => Grereplace.vim
" ----------------------------------------------------

set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'


" ----------------------------------------------------
"  => Multiple line cursor
" ----------------------------------------------------

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
"let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
