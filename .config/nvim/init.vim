call plug#begin('~/.local/share/nvim/plugged')

" colorschemes
Plug 'arcticicestudio/nord-vim'

" vim commentary 
" gcc to toggle comment on a line,
" gc to comment a visual block
Plug 'tpope/vim-commentary'

" linting
Plug 'dense-analysis/ale'

Plug 'tpope/vim-fugitive'  " git for vim
Plug 'tpope/vim-surround'  " surround support
Plug 'tpope/vim-repeat'

" tagbar
Plug 'preservim/tagbar'

" Search with ag
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'junegunn/goyo.vim'  " Distraction free writing
Plug 'junegunn/limelight.vim'

" Terraform
Plug 'hashivim/vim-terraform'

" Ledger
Plug 'ledger/vim-ledger'

" LSP configuration
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

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
set cursorline

" leader mappings
let mapleader = ","
nnoremap <leader>ev <cmd>e $MYVIMRC<cr>
nnoremap <leader>sv <cmd>source $MYVIMRC<cr>
nnoremap <leader>gf <cmd>GFiles<cr>
nnoremap <leader>ag <cmd>Ag<cr>
noremap <leader>bf <cmd>Buffers<cr>
nnoremap <leader>go <cmd>Tex<cr>

" tagbar toggle
nnoremap <F8> <cmd>TagbarToggle<CR>

" tags setup
set tags=tags

" autocompletion options
set completeopt=menu,menuone,noselect

" run lsp configuration
runtime lsp.lua
