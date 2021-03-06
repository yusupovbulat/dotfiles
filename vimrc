call plug#begin('~/.vim/plugged')
Plug 'sirver/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'shmup/vim-sql-syntax'
Plug 'nvie/vim-flake8'
Plug 'mattn/emmet-vim'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'lervag/vimtex'
Plug 'honza/vim-snippets'
Plug 'mcchrish/nnn.vim'
"colorscheme
Plug 'morhetz/gruvbox'
call plug#end()

let g:gruvbox_termcolors=256
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
set conceallevel=1
let g:tex_conceal='abdmg'
let g:gruvbox_contrast_dark='hard'
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

autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

set hlsearch
set incsearch

colorscheme gruvbox
set background=dark

"mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
