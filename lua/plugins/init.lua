-- Manage plugins using packer
-- Ref: https://github.com/wbthomason/packer.nvim

-- Auto install packer when it is not installed
-- local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

-- if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
--   vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
--   vim.api.nvim_command('packadd packer.nvim')
-- end

-- The actuall packer startup
-- Note: On first load `:PackerInstall` has to be run to install these plugins
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Extra utils for using lua in nvim
  use 'norcalli/nvim_utils'

  -- My Plugins
  use '~/workspace/nvim-pydoc'
  -- Pydoc plugin
  -- use 'twanh/nvim-pydoc'

  -- LSP
  use 'neovim/nvim-lspconfig'
  -- Nice icons in the completion menu
  use 'onsails/lspkind-nvim'
  -- Easy way to install a lsp
  use 'anott03/nvim-lspinstall'
  -- Completion
  -- use 'hrsh7th/nvim-compe'


  -- Updated completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-calc'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-omni'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'


  -- File explorer
  use 'kyazdani42/nvim-web-devicons' -- For file icons
  use 'kyazdani42/nvim-tree.lua'

  -- Themes
  use 'ayu-theme/ayu-vim'
  use 'dracula/vim'

  -- Tree sitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Plenary for nice lua, also required for telescope
  use 'nvim-lua/plenary.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- Syntax highlighting for a lot of languages
  use 'sheerun/vim-polyglot'

  -- Auto close brackets etc
  use 'jiangmiao/auto-pairs'

  -- Tabular
  use 'godlygeek/tabular'

  -- Comment out code
  use 'tpope/vim-commentary'

  -- Git status (shows line change, etc...)
  -- use 'mhinz/vim-signify'

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  -- Bufferline
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }

  -- Markdown syntax highlighting, matching, rules and mappings...
  -- use {
  --   'plasticboy/vim-markdown',
  --   requires = {{'godlygeek/tabular'}}
  -- }

  -- Cool repl like thing
  use 'metakirby5/codi.vim'

  -- Arduino
  use 'stevearc/vim-arduino'

  -- Jinja Support
  use 'lepture/vim-jinja'
  -- Extra go functioniallity
  -- use 'fatih/vim-go'

  -- Jupytext
  use 'goerz/jupytext.vim'

  -- Diagnostics
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }

  -- Auto close tags
  use 'alvan/vim-closetag'


  -- Snippets
  use 'SirVer/ultisnips'

  -- Latex
  use 'lervag/vimtex'

  -- Lua dev
  use 'milisims/nvim-luaref'
  use 'folke/lua-dev.nvim'

  -- Github copilot
  -- use 'github/copilot.vim'
  use 'zbirenbaum/copilot.lua'

  -- Folding
  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

  -- Mason
  use 'mason-org/mason.nvim'

end)
