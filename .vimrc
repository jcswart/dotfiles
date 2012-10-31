" Pathogen settings
call pathogen#infect()
syntax on
filetype plugin indent on

" Set ',' as the leader instad of default '\'
"let mapleader = ","

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

" Toggle NERDTree
map <leader>n :NERDTreeToggle<CR>

" Buffer hot-keys
map <leader>bn :bn<CR>
map <leader>bp :bp<CR>
map <leader>bl :buffers!<CR>
