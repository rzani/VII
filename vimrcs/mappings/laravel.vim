"
" Laravel mapping commands
"
"
" Sections
"       -> Artisan General
"       -> Shortcuts

" Automacally close braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Automacally close apostrophes 
inoremap '      ''<Left>
inoremap '<CR>  '<CR>'<Esc>O
inoremap ''     ''

" Automacally close quotation mark 
inoremap "      ""<Left>
inoremap "<CR>  "<CR>"<Esc>O
inoremap ""     ""

" Automacally close parenthesis
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()


" ------------------------------------------------------------
"  => Artisan General
" ------------------------------------------------------------

nmap <Leader>la :!php artisan

" Generical make
nmap <Leader>lm :!php artisan make:

" Generical queue 
nmap <Leader>lq :!php artisan queue:

" Generical migrate
nmap <Leader>lmi :!php artisan migrate:


" ------------------------------------------------------------
"  => Shortcuts
" ------------------------------------------------------------


nmap <Leader><Leader>c :tabnew<cr>:e app/Http/Controllers/<cr>
nmap <Leader><Leader>v :tabnew<cr>:e resources/views/<cr>
nmap <Leader><Leader>m :CtrlP app/<cr>


