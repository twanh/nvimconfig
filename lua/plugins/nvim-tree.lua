-- Manage the settings for nvim-tree
-- Ref: https://github.com/kyazdani42/nvim-tree.lua

-- Ignore common directories that have no value for most projects
vim.g.nvim_tree_ignore = {'.git', '__pycache__'}
-- Opens nvim tree when opening in a directory
vim.g.nvim_tree_auto_open = 1
-- Close when it's the last buffer
vim.g.nvim_tree_auto_close = 1
-- Show indent marker
vim.g.nvim_tree_indent_markers = 1
-- Hide dotfiles files (dotfiles can always be show using `H` in the file explorer)
vim.g.nvim_tree_hide_dotfiles = 1
-- Don't show the git icons
vim.g.nvim_tree_show_icons = {
  ['folders'] = 1,
  ['files'] = 1, 
  ['git'] = 0,
}

-- NvimTree keybinds

if (vim.g.nvim_tree_auto_open == 1) then
  vim.g.nvim_tree_find_file_open = true
else
  vim.g.nvim_tree_find_file_open = false 
end

local function toggle_nvim_tree_find_file()
  if (vim.g.nvim_tree_find_file_open) then
    vim.g.nvim_tree_find_file_open = false 
    vim.cmd('NvimTreeClose') 
  else
    vim.g.nvim_tree_find_file_open = true
    vim.cmd('NvimTreeFindFile')
  end
end

-- Use the toggle function to toggle the find file functionallity 
vim.api.nvim_set_keymap('n', '<leader>b', '<cmd>lua require("plugins.nvim-tree").toggle_nvim_tree_find_file()<cr>', { noremap = true, silent = true })

return {
  toggle_nvim_tree_find_file = toggle_nvim_tree_find_file
}

