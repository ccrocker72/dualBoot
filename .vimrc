call plug#begin()
Plug 'morhetz/gruvbox'
call plug#end()
 
:set bg=dark
colorscheme gruvbox

" Better copy and paste
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and Back Space
set mouse=a
set bs=2

" Caps lock instead of escape!
autocmd BufEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
autocmd BufLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Bind Ctrl+ key to move around windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Easier moving code blocks
vnoremap < <gv 
vnoremap > >gv 

" Syntax highlighting
filetype off
filetype plugin indent on
syntax on

" Showing line numbers and length
set relativenumber
set number " line numbers
set tw=79 " width of document (used by gd)
set wrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing

" spaces, no TABS
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set nohlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set nowritebackup
set noswapfile
set scrolloff=8

set signcolumn=yes
set colorcolumn=80
