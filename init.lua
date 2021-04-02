-- Load plugins
require('plugins')
require('plugins/nvim-tree')
require('plugins/telescope')
require('plugins/commentary')
require('plugins/signify')
require('plugins/vim-markdown')
require('plugins/compe')
require('plugins/lspkind')
require('plugins/bufferline')
require('plugins/nvim-utils')
-- Load settings
require('settings')
-- Load (global) keymaps
-- Note: plugin specific keymaps are created in the plugins file
require('keymaps')
-- Load the colorscheme
require('colorscheme')
-- Load statusline
require('statusline')
-- Load the language servers
require('lsp')
require('lsp/python')
require('lsp/vue')
require('lsp/typescript')
