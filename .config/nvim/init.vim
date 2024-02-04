call plug#begin('~/.local/share/nvim/plugged')

" colorschemes
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
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

" Terraform
Plug 'hashivim/vim-terraform'

" Ledger
Plug 'ledger/vim-ledger'

" Vue support
Plug 'posva/vim-vue'

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

" Default indent settings
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set termguicolors
" Theme
" colorscheme dracula
colorscheme catppuccin-frappe

set number
set relativenumber
set shiftround
set cursorline

" Set the python interpreter
let g:python3_host_prog = '~/.local/venvs/nvim/bin/python'

" Only use ALE as setup in the python vim file (ftafter)
let g:ale_linters_explicit = 1

" Ale executables are in a special environment
let g:ale_python_flake8_executable = '/Users/gohmann/.local/venvs/nvim/bin/flake8'
let g:ale_python_pydocstyle_executable = '/Users/gohman/.local/venvs/nvim/bin/pydocstyle'

" Vue pre-processors
let g:vue_pre_processors = ['pug', 'scss']

" leader mappings
let mapleader = ","
nnoremap \ ,
nnoremap <leader>ev <cmd>e $MYVIMRC<cr>
nnoremap <leader>sv <cmd>source $MYVIMRC<cr>
nnoremap <leader>ws <C-W><C-S>
nnoremap <leader>wv <C-W><C-V>
nnoremap <leader>wl <C-W><C-L>
nnoremap <leader>wh <C-W><C-H>
nnoremap <leader>wj <C-W><C-J>
nnoremap <leader>wk <C-W><C-K>
nnoremap <leader>tt <cmd>term<cr>

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

" hide the statusline
set laststatus=0
" but show the tabline
set showtabline=2

" autocompletion options
set completeopt=menu,menuone,noselect

" run lsp configuration
runtime lsp.lua
runtime telescope.lua
