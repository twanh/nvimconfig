--trouble.nvim
-- Nice diagnostics window
-- Ref: https://github.com/folke/trouble.nvim

-- Keymaps

-- Toggle the default view (document diagnostics)
vim.api.nvim_set_keymap('n',
  '<leader>xx', '<cmd>TroubleToggle<cr>',
  { silent = true, noremap=true}
)

-- Toggle with the definitions view
vim.api.nvim_set_keymap('n',
  '<leader>xd', '<cmd>TroubleToggle lsp_definitions<cr>',
  { silent = true, noremap=true}
)

-- Toggle with the references view
vim.api.nvim_set_keymap('n',
  '<leader>xr', '<cmd>TroubleToggle lsp_references<cr>',
  { silent = true, noremap=true}
)
require("trouble").setup{
  position = 'bottom',
  mode = 'document_diagnostics',
  auto_preview = false,
  auto_close = true,
  auto_open = false,

}
