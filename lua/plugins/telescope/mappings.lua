-- Keymaps for telescope
-- Also assinging custom functions (defined in fns) to keymaps

-- Simple finds (see fns.lua)
vim.api.nvim_set_keymap('n', '<leader>ff', '<CMD>lua require("plugins.telescope.fns").simple_find()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<CMD>lua require("plugins.telescope.fns").simple_git()<CR>', { noremap = true })

-- Use custom buffer search
vim.api.nvim_set_keymap('n', '<leader>fd', '<CMD>lua require("plugins.telescope.fns").search_buffers()<CR>', { noremap = true })

-- Search through registers (for copying and pasting)
vim.api.nvim_set_keymap('n', '<leader>fr', '<CMD>Telescope registers<CR>', { noremap = true })

-- Spelling correction
vim.api.nvim_set_keymap('n', '<leader>fs', '<CMD>Telescope spell_suggest<CR>', { noremap = true })

-- Live grep
vim.api.nvim_set_keymap('n', '<leader>fb', '<CMD>Telescope live_grep<CR>', { noremap = true })

-- Custom pickers
-- Search ~/Dropbox/notes with <leader>fn
vim.api.nvim_set_keymap('n', '<leader>fn', '<CMD>lua require("plugins.telescope.fns").search_notes()<CR>', { noremap = true })
-- Search ~/.config/nvim/ with <leader>fc
vim.api.nvim_set_keymap('n', '<leader>fw', '<CMD>lua require("plugins.telescope.fns").search_workspace()<CR>', { noremap = true })

-- LSP Search
vim.api.nvim_set_keymap('n', '<leader>fq', '<CMD>lua require("plugins.telescope.fns").search_doc_symbols()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fe', '<CMD>lua require("plugins.telescope.fns").search_diagnostics()<CR>', { noremap = true })
