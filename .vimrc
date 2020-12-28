
set nowrap

set nocompatible
set ttyfast

set number
set relativenumber

set cursorline
set ruler
set showcmd

syntax on

set hlsearch
set incsearch
set ignorecase

" vim-plug
call plug#begin()
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'ycm-core/YouCompleteMe', {'do': './install.py'}
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf.vim'
call plug#end()

let g:ycm_gopls_binary_path = 'gopls'

let mapleader=","
noremap <leader>r :.w !bash<CR>
noremap <leader>o :only<CR>
noremap <leader>d :bd<CR>
noremap <leader>cd :cd %:h<CR>
noremap <leader>gr :!go run %<CR>
noremap <leader>gd :YcmCompleter GoToDefinition<CR>
noremap <leader>e :Files<CR>
au FileType go nmap <leader>x :GoTestFunc<CR>

set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
set tabstop=2
set shiftwidth=2
set expandtab smarttab

set background=dark
