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
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'

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

Plugin 'jondkinney/dragvisuals.vim'

" Live color
Plugin 'gorodinskiy/vim-coloresque'

" SASS syntax
Plugin 'cakebaker/scss-syntax.vim'

call vundle#end()
filetype plugin indent on


" ----------------------------------------------------
"  => Plugins settings
" ----------------------------------------------------

" -------------------> CtrlP <------------------------

" Make CtrlP more easy
let g:ctrlp_map = '<c-p>'

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


" ----------------> Syntastic  <----------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_aggregate_errors = 1                    " display all errors from all checkers together
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
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
let g:airline#extensions#tabline#fnamemod = ':t'

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

"let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

" ----------------------------------------------------
"  => Dragvisuals
" ----------------------------------------------------

vmap  <expr>  <C-h>        DVB_Drag('left')
vmap  <expr>  <C-l>        DVB_Drag('right')
vmap  <expr>  <C-j>        DVB_Drag('down')
vmap  <expr>  <C-k>        DVB_Drag('up')
let g:DVB_TrimWS = 1


" ----------------------------------------------------
"  => Vim PHP Namespace
" ----------------------------------------------------
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

"Sort PHP use statements
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>" Sort use statements

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" Make it easy add semicolon at end of line
imap <Leader>; <Esc><S-a>;
nmap <Leader>; <S-a>;<Esc>


