local builtin = require('telescope.builtin')
local telescope = require('telescope')

telescope.setup{
  defaults = {
    -- Default configuration for telescope goes here
    -- config key = value,
    mappings = {
      i = {
        ["<C-h>"] = "which_key",
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
      }
    }
  },
  extensions = {
    file_browser = {
        theme = "ivy",
        hijack_netrw = true,
    }
  }
}

-- Load extensions
telescope.load_extension('dap')
telescope.load_extension('file_browser')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fx', builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>pv", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
