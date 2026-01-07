vim.lsp.config('html', {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
})
vim.lsp.enable('html')
