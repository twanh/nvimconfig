local util = require("lspconfig.util")

vim.lsp.config('pyright', {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  settings = {
    pyright = {
      autoImportCompletion = true,
    },
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
      },
    },
  },
})
vim.lsp.enable('pyright')
