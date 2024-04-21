local lsp_zero = require('lsp-zero')
local navic = require('nvim-navic')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers
require('lspconfig').pyright.setup({})
require('lspconfig').lua_ls.setup({})
require('lspconfig').terraformls.setup({})
require('lspconfig').gopls.setup({})
require('lspconfig').vuels.setup({})
require('lspconfig').intelephense.setup{}

navic.setup {
    lsp = {
        auto_attach = true
    }
}
