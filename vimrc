" No Vi Compatibility. That just sucks.
set nocompatible

" change the mapleader from \ to ,
let mapleader=','

" vim configs with pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on
set autoindent
set smartindent
au FileType php set omnifunc=phpcomplete#CompletePHP
let php_sql_query=1                                                                                        
let php_htmlInStrings=1
syntax enable           " Turn on syntax highlighting.

" Tabs converted to 4 spaces
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set backspace=indent,eol,start

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set visualbell           " don't beep
set noerrorbells         " don't beep

" Enable mouse everywhere
set mouse=a

" Hide mouse pointer while typing
set mousehide
set mousemodel=popup

" Disable the F1 help key
map <F1> <Esc>
imap <F1> <Esc>

" http://vim.wikia.com/wiki/Move_cursor_by_display_lines_when_wrapping
nnoremap <silent> j gj
nnoremap <silent> k gk
vnoremap <silent> j gj
vnoremap <silent> k gk

" Minimal number of screen lines to keep above and below the cursor.
" This keeps the cursor always in the vertical middle of the screen.
set scrolloff=999

" Use UTF-8
set encoding=utf-8

" Solarized
set guifont=Menlo\ Regular:h12
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

" Activate a permanent ruler
set ruler

" Disable Toolbar, Scrollbar
set guioptions-=T
set guioptions-=r

" Highlight current line
set cursorline

" Show line number, cursor position.
set ruler

" Display incomplete commands.
set showcmd

" Search as you type.
set incsearch

" Ignore case while searching
set ignorecase

" Bundle 'scrooloose/syntastic'
let g:syntastic_enable_signs=1

" Source the vimrc file after saving it
if has("autocmd")
    autocmd! bufwritepost .vimrc source $MYVIMRC
endif

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:<CR>
  vmap <Leader>a: :Tabularize /:<CR>
endif

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" NERDTree
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Resize current window automatically to fill the max. available space
" Space is set by the variables above
map <leader>f :call CenterCurrentWindow()<cr>
map <leader>= <c-w>

function! CenterCurrentWindow()
  resize
  vertical resize
endfunction

" User space key to make highlighted search results disappear
nnoremap <space> :nohlsearch<CR>/<BS>
