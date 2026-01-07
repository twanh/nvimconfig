vim.lsp.config('gopls', {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
})
vim.lsp.enable('gopls')
