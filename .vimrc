" Pathogen settings
call pathogen#infect()
syntax on
filetype plugin indent on

" Set ',' as the leader instad of default '\'
let mapleader = " "

" Allow backspace to operate as you would expect
set bs=indent,eol,start

" Display trailing whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Searching
set hlsearch " Highlight search terms
set incsearch " Show search matches as you type
set ignorecase " Ignore case when searching
set smartcase " Make searches case sensitive only if they contain uppercase stuff

" Make jj exit insert mode (since it's almost never typed normally).
imap jj <Esc>

" Colorscheme
colorscheme monokai

" Tab settings: tabs are 4 spaces, use tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Window Management
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" Buffer hot-keys
map <leader>bn :bn<CR>
map <leader>bp :bp<CR>
map <leader>bl :buffers!<CR>
map <leader>nh :new<CR>
map <leader>nv :vnew<CR>

" Quick save
map <leader>w :w!<CR>
map <D-w> :w!<CR>

" Quick exit
map <leader>q :q!<CR>

" Quickswitch
map <leader>z <C-z>

" Make a curly brace automatically insert an indented line
inoremap {<CR> {<CR><CR>}<Esc>O2k<Tab><BS>

" Map F1 to Esc instead of Help.
map <F1> <Esc>
imap <F1> <Esc>

" Cursor doesn't skip wrapped lines with hitting j or k
nnoremap j gj
nnoremap k gk

" <c-j> and <c-k> move by 10 lines at a time
nmap <C-j> 10j
nmap <C-k> 10k
vmap <C-j> 10j
vmap <C-k> 10k

" Clear highlighted words using Enter when in normal mode
nnoremap <CR> :noh<CR>

" Function to trim trailing whitespace on save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

""""""""""""""""
" Auto complete
""""""""""""""""
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
