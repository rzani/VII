"
"Maintener
"    Rodrigo Zani <rodrigo.zhs@gmail.com>
"
"Version
"    0.1
"
"Sections
"    -> General
"    -> User Interface
"    -> Search Settings
"    -> Color and fonts
"    -> Text and indent
"    -> Split Management
"    -> Auto Commands

" ------------------------------------------------------------
"  => General
" ------------------------------------------------------------

" No backup
set nobackup
set nowritebackup

" Sets how many lines of history Vim has to remember
set history=500

" The default leader is '\', but comma is much better
let mapleader=","
let g:mapleader=","

" Set clipboard default name
set clipboard=unnamed

" Make it easy save files
nmap <Leader>w :w!<cr>

" Make it easy close files
nmap <Leader>q :q<cr>

" Make it easy redo changes
nmap <C-y> :redo<cr>

" :W sudo saves the file
" " (useful for handling the permission-denied error)
" command W w !sudo tee % > /dev/null

" Make it easy to edit the Vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Make it easy to edit the .vii/vimrcs/basic.vim
nmap <Leader>eb :tabedit ~/.vii/vimrcs/basic.vim<cr>

" Make it easy to edit plugins file
nmap <Leader>ep :tabedit ~/.vii/vimrcs/plugins.vim<cr>

" Make it easy to edit Hosts file
nmap <Leader>eh :tabedit /etc/hosts<cr>

" Stop annoying bells and blinks
set noerrorbells visualbell t_vb=
set novisualbell

" Setting dictionary
set dictionary=/usr/share/dict/words

" ------------------------------------------------------------
"  => User Interface
" ------------------------------------------------------------

" Show line number, switch between 'number' and 'nonumber'
set number

" Set to auto read when a file is changed from the outside
set autoread

" Turn on wildmenu - more comfortable command line completion
set wildmenu
set wildmode=longest:full,full

" Make backspace behave like every other editor
set backspace=indent,eol,start

" Always show current position
set ruler

" A buffer becomes hidden when it is abandoned
set hid

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
    set mouse=a
endif

" Remove space when window split
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Set color column
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" Make tabs, trailing whitespace and no-breaking spaces visible
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

" ------------------------------------------------------------
"  => Search Settings
" ------------------------------------------------------------

" Ignore case sensitive
set ignorecase

" Try to be smart about case
set smartcase

" Highlight search results
set hlsearch

" Increment highlight when search
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Make easy to search
" nmap <space> /
" nmap <C-space> ?

" Disabled highlight
nmap <Leader><space> :nohlsearch<cr>


" ------------------------------------------------------------
"  => Color and fonts
" ------------------------------------------------------------

set t_CO=256

" Sets the background color
set background=dark

try
    colorscheme mod8
catch
endtry

if has('gui_running')
  set guioptions-=T  " no toolbar
  set lines=60 columns=220 linespace=0
  if has('gui_gtk2')
    set guifont=Fira\ Mono\ for\ Powerline\ 11
  else
      set guifont=Fira_Mono_for_Powerline:h12
  endif
endif
" if has('gui_running')
"    set guifont=Fira_Mono_for_Powerline\ 11
"endif


" Enable syntax highlight
syntax enable

" Line column style
" hi LineNr ctermfg=grey ctermbg=NONE guifg=grey guibg=NONE

" Padding left
" set foldcolumn=1
" hi foldcolumn guibg=NONE ctermbg=NONE


" Slit separator color
"hi vertsplit guifg=grey guibg=NONE ctermfg=grey ctermbg=NONE
hi StatusLineNC guifg=black guibg=grey ctermfg=black ctermbg=grey


" ------------------------------------------------------------
"  => Text and inden
" ------------------------------------------------------------

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Auto indent
set ai

"Smart indent
set si

"Wrap lines
set wrap

" Moving line up and down
"nnoremap <C-Up> :m .-2<CR>==
"nnoremap <C-Down> :m .+1<CR>==
"inoremap <C-Up> <Esc>:m .-2<CR>==gi
"inoremap <C-Down> <Esc>:m .+1<CR>==gi
"vnoremap <A-Up> :m '<-2<CR>gv=gv''
"vnoremap <C-Down> :m '>+1<CR>gv=gv

" ------------------------------------------------------------
"  => Split Management
" ------------------------------------------------------------

" Open file below when vsp
set splitbelow

" Open file right when sp
set splitright

" Vertical split map
nmap <Leader>v :vsp<cr>

"Horizontal split map
nmap <Leader>h :sp<cr>

" Lazy way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <Leader>bd :bd<cr>gT

" Close all the buffers
map <Leader>ba :bufdo bd<cr>

" Useful mappings for managing tabs
map <Leader>tn :tabnew<cr>
map <Leader>to :tabonly<cr>
map <Leader>tc :tabclose<cr>
map <Leader>tm :tabmove

" Specify the behavior when switching between buffers
try
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry


" ------------------------------------------------------------
"  => Auto Commands
" ------------------------------------------------------------

" Automatically source the Vimrc file on save
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
    autocmd BufWritePost basic.vim source ~/.vimrc
augroup END

" Ctrl+s Save the file
imap <C-S> <Esc>:w<cr>
nmap <C-S> :w<cr>

nmap <C-Tab> :bn<cr>
imap <C-Tab> <Esc>:bn<cr>

nmap <C-S-Tab> :bp<cr>
imap <C-S-Tab> <Esc>:bp<cr>
