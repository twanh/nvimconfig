-- Commentary
-- Comment stuff out
-- Ref: https://github.com/tpope/vim-commentary

-- Keybinds
vim.api.nvim_set_keymap('n', '<leader>\\', ':Commentary<CR>', {noremap = true})
vim.api.nvim_set_keymap('v', '<leader>\\', ':Commentary<CR>', {noremap = true})
