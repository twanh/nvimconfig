-- Keymaps
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope git_files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<CMD>lua require("plugins.telescope.fns").simple_git()<CR>', {noremap = true})
-- Use custom buffer search 
vim.api.nvim_set_keymap('n', '<leader>fb', '<CMD>lua require("plugins.telescope.fns").search_buffers()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fr', ':Telescope registers<CR>', { noremap = true })

-- Custom pickers 
-- Search ~/Dropbox/notes with <leader>fn
vim.api.nvim_set_keymap('n', '<leader>fn', '<CMD>lua require("plugins.telescope.fns").search_notes()<CR>', {noremap = true})
-- Search ~/.config/nvim/ with <leader>fc
vim.api.nvim_set_keymap('n', '<leader>fc', '<CMD>lua require("plugins.telescope.fns").search_config()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fw', '<CMD>lua require("plugins.telescope.fns").search_workspace()<CR>', {noremap = true})
-- LSP Search
vim.api.nvim_set_keymap('n', '<leader>fq', '<CMD>lua require("plugins.telescope.fns").search_doc_symbols()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fd', '<CMD>lua require("plugins.telescope.fns").search_diagnostics()<CR>', {noremap = true})
