call plug#begin('~/.local/share/nvim/plugged')

" colorschemes
Plug 'arcticicestudio/nord-vim'

" vim commentary 
" gcc to toggle comment on a line,
" gc to comment a visual block
Plug 'tpope/vim-commentary'

Plug 'tpope/vim-fugitive'  " git for vim

" linting
Plug 'dense-analysis/ale'

" tagbar
Plug 'preservim/tagbar'

" Search with ag
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Terraform
Plug 'hashivim/vim-terraform'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Ledger
Plug 'ledger/vim-ledger'

call plug#end()

" Display friendly cat
echo ">^.^<"

" Default indent settings
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
" Theme
colorscheme nord

set number
set relativenumber
set shiftround

" leader mappings
let mapleader = ","
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>gf :GFiles<cr>
nnoremap <leader>ag :Ag<cr>
nnoremap <leader>bf :Buffers<cr>

" tagbar toggle
nnoremap <F8> :TagbarToggle<CR>

" tags setup
set tags=tags

" execute different modules
runtime coc.vim
