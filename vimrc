call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-scripts/javacomplete'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'lifepillar/pgsql.vim'
Plug 'shmup/vim-sql-syntax'
Plug 'nvie/vim-flake8'
"colorscheme
Plug 'morhetz/gruvbox'
call plug#end()

let g:gruvbox_termcolors=256
set encoding=utf-8
set mouse=a
set number
set clipboard=unnamedplus
let g:mapleader=','
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
filetype plugin on
syntax on

"Cut/Copy/Paste using 'standart' hotkeys
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

set hlsearch
set incsearch

colorscheme gruvbox
set background=dark

"mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
