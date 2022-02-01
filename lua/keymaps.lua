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
vim.api.nvim_set_keymap('n', '<leader>q', ':bp<CR>', { noremap = true, silent=true })
vim.api.nvim_set_keymap('n', '<leader>w', ':bd<CR>', { noremap = true, silent=true })
vim.api.nvim_set_keymap('n', '<leader>e', ':bn<CR>', { noremap = true, silent=true })

-- Keep the visual mode selection after indent
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- Center the next search result
vim.api.nvim_set_keymap('n', 'n', 'nzz', { noremap = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzz', { noremap = true })

-- Copy/paste using the system clipboard when using <leader>
-- Note: "+ means use the 'clipboard' register
-- Set it in both normal and visual mode
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', { noremap = true })

-- Reload all buffer
vim.api.nvim_set_keymap('n', '<leader>r', ':bufdo e!<CR>', { noremap = true })

-- Terminal remaps
-- Quit the terminal
vim.api.nvim_set_keymap('t', '<leader><esc>', '<c-\\><c-n>', { noremap = true })

-- Move to previous spelling mistake and auto fix it.
vim.api.nvim_set_keymap('n', '<leader>s', '[s 1z=', { noremap = true })
