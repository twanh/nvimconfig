-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

-- require'lspconfig'.cssls.setup {
--   capabilities = capabilities,
-- }
-- -- require'lspconfig'.cssls.setup{}
-- --

vim.lsp.config('cssls', {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

vim.lsp.enable('cssls')
