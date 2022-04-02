call plug#begin('~/.local/share/nvim/plugged')

" colorschemes
Plug 'arcticicestudio/nord-vim'
Plug 'mvpopuk/inspired-github.vim'
Plug 'projekt0n/github-nvim-theme'

" vim commentary 
" gcc to toggle comment on a line,
" gc to comment a visual block
Plug 'tpope/vim-commentary'

" motion plugins
Plug 'justinmk/vim-sneak'

" linting
Plug 'dense-analysis/ale'

Plug 'tpope/vim-fugitive'  " git for vim
Plug 'tpope/vim-surround'  " surround support
Plug 'tpope/vim-repeat'

" tagbar
Plug 'preservim/tagbar'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

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

" Indent guides
Plug 'lukas-reineke/indent-blankline.nvim'

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
" if exists('+termguicolors')
"   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"   set termguicolors
" endif
set termguicolors
" Theme
colorscheme github_dimmed

set number
set relativenumber
set shiftround
set cursorline

" leader mappings
let mapleader = ","
nnoremap \ ,
nnoremap <leader>ev <cmd>e $MYVIMRC<cr>
nnoremap <leader>sv <cmd>source $MYVIMRC<cr>

" telescope mappings
nnoremap <leader>ff <cmd>Telescope find_files theme=dropdown<cr>
nnoremap <leader>fg <cmd>Telescope live_grep theme=dropdown<cr>
nnoremap <leader>fb <cmd>Telescope buffers theme=dropdown<cr>
nnoremap <leader>ft <cmd>Telescope tags theme=dropdown<cr>
nnoremap <leader>fh <cmd>Telescope help_tags theme=dropdown<cr>

" quickfix mappings
nnoremap <leader>cn <cmd>cn<cr>
nnoremap <leader>cp <cmd>cp<cr>
nnoremap <leader>ccl <cmd>ccl<cr>

" tagbar toggle
nnoremap <F8> <cmd>TagbarToggle<CR>

" tags setup
set tags=tags

" autocompletion options
set completeopt=menu,menuone,noselect

" run lsp configuration
runtime lsp.lua

" run telescope configuration
runtime telescope.lua
