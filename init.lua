-- Load plugins
require('plugins')
require('plugins/nvim-tree')
require('plugins/telescope')
require('plugins/commentary')
require('plugins/airline')
require('plugins/signify')
require('plugins/vim-markdown')
require('plugins/compe')
require('plugins/lspkind')
-- Load settings
require('settings')
-- Load (global) keymaps
-- Note: plugin specific keymaps are created in the plugins file
require('keymaps')
-- Load the colorscheme
require('colorscheme')
-- Load the language servers
require('lsp')
require('lsp/python')
require('lsp/vue')
