" Pathogen settings
call pathogen#infect()
syntax on
filetype plugin indent on

let mapleader = " " " Set ',' as the leader instad of default '\'
set number          " Line numbers on

" Allow backspace to operate as you would expect
set bs=indent,eol,start

" Display trailing whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Searching
set hlsearch   " Highlight search terms
set incsearch  " Show search matches as you type
set ignorecase " Ignore case when searching
set smartcase  " Make searches case sensitive only if they contain uppercase stuff

" Tags
nnoremap <leader>nt :tn<CR>
nnoremap <leader>np :tp<CR>
nnoremap <leader>ns :ts<CR>
nnoremap <leader>nf <C-]>
nnoremap <leader>nb <C-t>

" Make jj exit insert mode (since it's almost never typed normally).
imap jj <Esc>

" Colorscheme
colorscheme monokai

" Tab settings: tabs are 4 spaces, use tabs
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Window Management
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
"narrower window
map - <C-W><
"wider window
map + <C-W>>
"shorter window
map _ <C-W>-
"taller window
map = <C-W>+


" Amazing ass window swapping from:
" http://stackoverflow.com/questions/2586984/how-can-i-swap-positions-of-two-open-files-in-splits-in-vim
function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf 
endfunction

nmap <silent> <leader>mw :call MarkWindowSwap()<CR>
nmap <silent> <leader>pw :call DoWindowSwap()<CR>
"    To use (assuming your mapleader is set to \) you would:
"    Move to the window to mark for the swap via ctrl-w movement
"    Type \mw
"    Move to the window you want to swap
"    Type \pw


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
inoremap {<cr> {<cr>}<c-o>O
inoremap [<cr> [<cr>]<c-o>O
inoremap (<cr> (<cr>)<c-o>O

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

" PHP Linting- run current file thorough php syntax checker
nnoremap <leader>pp :!php -l %<CR>

" Sync - I create a sync.sh in the root folder of each project. This file
" contains the rsync command to push to the dev server. This command, file
" and the cooresponding ssh key\config allow simply remote syncing. Also
" a file named sync-excludes.txt is read by sync.sh
nnoremap <leader>ss :!./sync.sh<CR>

" Tabularize plugin
nmap <Leader>ae :Tabularize /=<CR>
vmap <Leader>ae :Tabularize /=<CR>
nmap <Leader>ac :Tabularize /:\zs<CR>
vmap <Leader>ac :Tabularize /:\zs<CR>

" Clean up the BCE of Vim in tmux
" found here: http://snk.tuxfamily.org/log/vim-256color-bce.html
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif


""""""""""""""""
" Auto complete
""""""""""""""""
"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
