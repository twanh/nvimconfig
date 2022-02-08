-- Show todo comments (in trouble window)
-- https://github.com/folke/todo-comments.nvim

require('todo-comments').setup {
  signs = false,
}

vim.api.nvim_set_keymap(
  'n',
  'xt',
  '<cmd>TodoTrouble<cr>',
  { silent = true, noremap=true}
 )


