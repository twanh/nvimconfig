-- Telescope setup
-- Ref: https://github.com/nvim-telescope/telescope.nvim

-- Global defaults
local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    prompt_prefix      = " |> ",
    selection_caret    = " ﰲ ",
    -- entry_prefix       = "  ",
    initial_mode       = "insert",
    selection_strategy = "reset",
    sorting_strategy   = "descending",
    layout_strategy    = "horizontal", -- Verical is also nice
    layout_config = {
      prompt_position    = 'top',
    },
    color_devicons     = true,
    mappings = {
      i = {
        -- Use esc to quit even in insert mode
        ['<esc>'] = actions.close
      },
    },   
  }
}

require('plugins.telescope.mappings')
