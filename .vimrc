" when you start searching text with /, search is performed at every new character insertion
set incsearch
set nopaste

set ai sw=2 sts=2 et

set fileformats=unix,dos

" docblock comments are continued when a newline is inserted
set comments=sr:/*,mb:*,ex:*/

syntax on
filetype on
filetype plugin on
filetype plugin indent on
" check syntax with Ctrl + L
autocmd FileType php noremap <C-L> :!/usr/bin/env php -l %<CR>
autocmd FileType phtml noremap <C-L> :!/usr/bin/env php -l %<CR>

colorscheme ir_black 
set number

let mapleader=","
set hidden

set nobackup
set noswapfile

set pastetoggle=<F2>

nnoremap ; :
nmap <leader>s :TlistToggle<CR>

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set mouse=a

set nocompatible

runtime! macros/matchit.vim

augroup myfiletypes
  autocmd!
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

if has("gui_running")
  colorscheme molokai
  set guifont=Monaco:h12
endif
