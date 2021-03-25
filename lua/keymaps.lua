-- Use ctrl+hjkl to move panels
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- Use alt+hjkl to resize panels
vim.api.nvim_set_keymap('n', '<M-j>', ':resize -2<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<M-k>', ':resize +2<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<M-h>', ':vertical resize -2<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<M-l>', ':vertical resize +2<CR>', {noremap = true})

-- Buffer navigation
vim.api.nvim_set_keymap('n', '<leader>q', ':bp<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':bd<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>e', ':bn<CR>', {noremap = true})

-- Keep the visual mode selection after indent
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

