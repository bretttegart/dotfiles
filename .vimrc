set nocompatible
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,sjis,euc-jp
set fileformats=unix

" Backup: 
set backup
set backupdir=~/backup

" Search: take 50 search histories
set history=50

" Search: ignore case
set ignorecase

" Search: use case if mixed
set smartcase

" Search: highlight matched words
set hlsearch

" Search: use incremental search
set incsearch

" Display: show line numbers
set number

" Display: Visualize break ( $ ) or tab ( ^I ) characters
"set list

" Display: Highlight matching parentheses
set showmatch

" Display: show color display
syntax on

" Display: specific color scheme
highlight Comment ctermfg=LightCyan

" Display: wrap lines
set wrap

" Display: wrap lines at 79
set textwidth=79

" Display: Highlight lines over 80 chars
highlight OverLength ctermbg=darkred ctermfg=white
match OverLength /\%80v.\+/

" Display: Vertical bar at 80 chars
highlight ColorColumn ctermbg=gray
set colorcolumn=80

" Display: offset cursor by 5 lines from top
set scrolloff=5

" Display: status bar
set laststatus=2

" Display: Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Display: Highlight bad white space
highlight BadWhitespace ctermbg=darkred ctermfg=white
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Function: set auto indent
set autoindent

" Function: # of spaces/tab
set tabstop=4

" Function: convert tabs to spaces
set expandtab

" Function: Save file history to persistent file
set undofile

" Function: enable Python code highlighting
let python_highlight_all=1

" Function: test macro commands
autocmd BufWritePost *.py !pycodestyle -v <afile>

