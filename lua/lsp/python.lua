vim.lsp.config('basedpyright', {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
})
vim.lsp.enable('basedpyright')
