" PHP
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
set completeopt=longest,menuone

" JS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" CSS

" SCSS
au BufRead,BufNewFile *.scss set filetype=scss.css
