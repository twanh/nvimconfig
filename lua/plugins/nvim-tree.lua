-- Manage the settings for nvim-tree
-- Ref: https://github.com/kyazdani42/nvim-tree.lua

-- Settings

-- Keybindings
vim.api.nvim_set_keymap('n', '<leader>b', '<cmd>NvimTreeToggle<cr>', { noremap = true, silent = true })

-- Settings
-- Note that the plugin is slowly migrating all settings to the setup function
-- until then some settings are set above
require'nvim-tree'.setup {
  -- open_on_setup = true,
  update_focused_file = {
    enable      = true,
    update_cwd  = false,
    ignore_list = {}
  },
  renderer = {
    indent_markers = {
      enable = false,
    },
    icons = {
      show = {
        file = true,
        folder = true,
        git = false,
      },
    },
  },
  filters = {
    dotfiles = true,
    custom   = {'.git', '__pycache__'},
  },
}
