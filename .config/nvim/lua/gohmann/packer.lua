-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "catppuccin/nvim", as = "catppuccin" }
  use { "nordtheme/vim" }
  use { "sainnhe/everforest" }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use('tpope/vim-fugitive')
  use('tpope/vim-commentary')
  use('rstacruz/vim-closer')
  use('tpope/vim-endwise')
  use('justinmk/vim-sneak')
  use('lukas-reineke/indent-blankline.nvim')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
  use {
      "SmiteshP/nvim-navic",
      requires = "neovim/nvim-lspconfig"
  }

  use {'mfussenegger/nvim-dap'}
  use {'nvim-telescope/telescope-dap.nvim', requires = {"mfussenegger/nvim-dap"} }
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
  use {'leoluz/nvim-dap-go', requires = {"mfussenegger/nvim-dap"}}

  use {
      "nvim-telescope/telescope-file-browser.nvim",
      requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      { "fredrikaverpil/neotest-golang", version = "*" },
    }
  }

end)
