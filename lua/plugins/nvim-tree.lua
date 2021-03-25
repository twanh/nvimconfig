-- Manage the settings for nvim-tree
-- Ref: https://github.com/kyazdani42/nvim-tree.lua

-- Ignore common directories that have no value for most projects
vim.g.nvim_tree_ignore = {'.git'}
-- Opens nvim tree when opening in a directory
vim.g.nvim_tree_auto_open = 1
-- Close when it's the last buffer
vim.g.nvim_tree_auto_close = 1
-- Show indent marker
vim.g.nvim_tree_indent_markers = 1
-- Don't show the git icons
vim.g.nvim_tree_show_icons = {
  ['folders'] = 1,
  ['files'] = 1, 
  ['git'] = 0,
}

-- NvimTree keybinds
vim.api.nvim_set_keymap('n', '<leader>b', ':NvimTreeToggle <CR>', {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>c', ':NvimTreeFindFile <CR>', {silent = true, noremap = true})


