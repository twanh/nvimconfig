-- Load plugins
require('plugins')
require('plugins/nvim-utils') -- Initialize nvim_utils, so should load first
require('plugins/bufferline')
require('plugins/cmp')
require('plugins/commentary')
-- require('plugins/compe')
require('plugins/copilot')
require('plugins/gitsigns') require('plugins/jupytext')
-- require('plugins/lspkind')
require('plugins/nvim-tree')
require('plugins/nvim-treesitter')
require('plugins/pydoc')
require('plugins/signify')
require('plugins/telescope')
require('plugins/trouble')
require('plugins/vim-markdown')
require('plugins/ultisnips')
require('plugins/vimtex')
require('plugins/mason')
-- Load settings
require('settings')
-- Load (global) keymaps
-- Note: plugin specific keymaps are created in the plugins file
require('keymaps')
-- Load the colorscheme
require('colorscheme')
-- FIX color scheme
vim.cmd([[
  highlight! link TabLineFill Normal
  highlight! TabLine gui=NONE guibg=NONE
  highlight! TabLineSel gui=bold guibg=NONE
]])
-- Load custom commands
require('commands')
-- Load custom snippets
require('snips')
-- Load statusline
require('statusline')
-- Load the language servers
require('lsp')
require('lsp/ccls')
require('lsp/css')
require('lsp/go')
require('lsp/html')
require('lsp/php')
require('lsp/python')
require('lsp/rust')
require('lsp/sql')
require('lsp/typescript')
require('lsp/vue')
require('lsp/svelte')
