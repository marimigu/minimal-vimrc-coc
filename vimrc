" ==============================
" Minimalistyczny .vimrc (Coc + języki)
" ==============================

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

" --- Kolory ---
colorscheme desert

" --- Skróty klawiszowe ---
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
nnoremap <C-q> :q<CR>
inoremap jk <Esc>

" --- Ułatwienia edycji ---
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch
set cursorline
set wildmenu

" --- Wtyczki (vim-plug) ---
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'

call plug#end()

" --- Konfiguracja Coc.nvim ---
let g:coc_global_extensions = [
      \ 'coc-pyright',
      \ 'coc-tsserver',
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-json',
      \ 'coc-snippets',
      \ 'coc-sh'
      \]

" --- Skróty Coc ---
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>f :call CocAction('format')<CR>
nmap <leader>a :call CocAction('codeAction')<CR>

" --- Autostart NERDTree ---
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" --- Statusline ---
let g:airline#extensions#tabline#enabled = 1

" --- Wyłącz dzwonek terminalowy ---
set noerrorbells visualbell t_vb=
