" --- Podstawy ---
set nocompatible
syntax on
filetype plugin indent on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set encoding=utf-8
set clipboard=unnamedplus
set termguicolors
colorscheme desert

" --- Skróty ---
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
nnoremap <C-q> :q<CR>
inoremap jk <Esc>

" --- Edycja ---
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch
set cursorline
set wildmenu

" --- Wtyczki ---
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
call plug#end()

" --- Coc.nvim ---
let g:coc_global_extensions = [
    \ 'coc-pyright',
    \ 'coc-intelephense',
    \ 'coc-tsserver',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-json',
    \ 'coc-snippets',
    \ 'coc-sh'
\ ]

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#next(1) : "\<TAB>"
inoremap <silent><expr> <S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<S-TAB>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

nmap <leader>rn <Plug>(coc-rename)
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)

autocmd VimEnter * NERDTree | wincmd p
let g:airline#extensions#tabline#enabled = 1
set noerrorbells
set visualbell
set t_vb=
au BufRead,BufNewFile *.sh set filetype=sh
