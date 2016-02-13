" ------------------------------------------------------------
" => Notes and Tips
" ------------------------------------------------------------

" :e 			- Edit a file
" :so % 		- Source the current file
" :bd			- Close the current buffer
" :tabclose|tabc	- Close the current tab
"
" d i ( 		- Delete Inside Parentesis
" v i '			- Select Inside quotes
" v a {			- Select Inside and braces code
" C-] 			- Go to de declation
" C-6			- Back to previours buffer
" zz			- Center the line where the cursor is located

" -------------------------------------------------------------
" => General
" -------------------------------------------------------------







" Declare plugins
so ~/.vim/plugins.vim





" ---- Edit Files

" Make it easy to edit the Vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>

" Make it easy to edit Hosts file
nmap <Leader>eh :tabedit /etc/hosts<cr>

" ---- Shortcuts

" -- Basic

" Redo replacement
nmap <C-Y> :redo<cr>



" Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

" Make NERDTree easy to toggle
nmap <Leader>t :NERDTreeToggle<cr>

" Make CtrlP more easy
nmap <C-p> :CtrlP<cr>

" Go to in the file by tag - Ctags is required
nmap <C-F> :CtrlPBufTag<cr>

" More recently used files
nmap <C-E> :CtrlPMRUFiles<cr>



"---------------------Plugins----------------------"

"------------------
"/ CtrlP
"------------------
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'


"------------------
"/ NERDTree
"------------------
let NERDTreeHijackNetrw = 0





"---------------------Auto-Commands----------------------"

"Automatically source the Vimrc file on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
