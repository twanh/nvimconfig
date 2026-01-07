vim.lsp.config('svelte', {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
})
vim.lsp.enable('svelte')
