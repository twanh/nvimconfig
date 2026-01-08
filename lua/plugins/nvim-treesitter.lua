-- Make sure treesitter is set up
require('nvim-treesitter.configs').setup {
  -- ... other treesitter config ...
  ensure_installed = { "lua", "vim", "python", "javascript" },
}

-- Set folding to use treesitter
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
vim.o.foldenable = true -- Enable folding
