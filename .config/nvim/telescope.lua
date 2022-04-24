require('telescope').setup{
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
  }
}
