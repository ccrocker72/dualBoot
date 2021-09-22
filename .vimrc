call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'puremourning/vimspector'
Plug 'junegunn/goyo.vim'
call plug#end()

set background=dark
colo gruvbox
syntax enable
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set hlsearch
set clipboard=unnamedplus
nnoremap <leader><space> :nohlsearch<CR>
nnoremap j gj
nnoremap k gk
let g:vimspector_enable_mappings='HUMAN'
