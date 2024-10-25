local lsp_zero = require('lsp-zero')
local navic = require('nvim-navic')
local lspconfig = require('lspconfig')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers
lspconfig.pyright.setup({})
lspconfig.lua_ls.setup({})
lspconfig.terraformls.setup({})
lspconfig.gopls.setup({})
lspconfig.vuels.setup({})
lspconfig.intelephense.setup({})
lspconfig.tsserver.setup({})

navic.setup {
    lsp = {
        auto_attach = true
    }
}
