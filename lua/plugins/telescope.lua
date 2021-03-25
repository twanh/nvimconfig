-- Telescope setup
-- Ref: https://github.com/nvim-telescope/telescope.nvim

require('telescope').setup{
  defaults = {
    prompt_position    = "bottom",
    prompt_prefix      = "|> ",
    selection_caret    = "> ",
    entry_prefix       = "  ",
    initial_mode       = "insert",
    selection_strategy = "reset",
    sorting_strategy   = "descending",
    layout_strategy    = "horizontal", -- Verical is also nice
  }
}

-- Custom pickers

-- Search through my notes
-- TODO: Fix/create the custom search functionality
--
-- local function search_notes() 
--   require("telescope.builtin").find_files({
--     cwd = "~/Dropbox/notes/notes/",
--     prompt = "~ Notes ~",
--   })
-- end
-- 
-- local function search_school()
-- require("telescope.builtin").find_files({
--   cwd = "~/Dropbox/notes/notes/school/",
--   prompt = "~ School ~",
--   layout_strategy='horizontal'
-- })
-- end
-- 
-- local M = {}
-- M.search_notes = search_notes()
-- M.search_school = search_school()

-- Keymaps
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope git_files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope buffers<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fr', ':Telescope registers<CR>', { noremap = true })

-- Custom pickers keymaps
-- vim.api.nvim_set_keymap('n', '<leader>fn', ":lua require" { expr=true, noremap = true })

-- TODO: Add LSP keymaps
