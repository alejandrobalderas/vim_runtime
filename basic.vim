" Map jj to ESC

imap jj <Esc>
set autoread

let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

":W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions
set magic

" Show matching brackets when text indicator is over them
set showmatch

set noerrorbells
set novisualbell


set smarttab
set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines

""""""""""""""""""""""""""
" Visual mode
""""""""""""""""""""""""""

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('','')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('','')<CR>?<C-R>=@/<CR><CR>


" Map Space to search and Ctrl Space to search backwards
map <space> /
map <C-space> ?

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Move a line of text using ALT+[jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z


" Insert empty line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
