-- Manage the settings for nvim-tree
-- Ref: https://github.com/kyazdani42/nvim-tree.lua

-- Settings
-- Show indent marker
vim.g.nvim_tree_indent_markers = 1
-- Don't show the git icons
vim.g.nvim_tree_show_icons = {
  ['folders'] = 1,
  ['files'] = 1, 
  ['git'] = 0,
}


-- Keybindings
vim.api.nvim_set_keymap('n', '<leader>b', '<cmd>NvimTreeToggle<cr>', { noremap = true, silent = true })

-- Settings
-- Note that the plugin is slowly migrating all settings to the setup function
-- until then some settings are set above
require'nvim-tree'.setup {
  auto_open = true,
  update_focused_file = {
    enable      = true,
    update_cwd  = false,
    ignore_list = {}
  },

  filters = {
    dotfiles = true,
    custom   = {'.git', '__pycache__'},
  },
}

