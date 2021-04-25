-- Manage plugins using packer
-- Ref: https://github.com/wbthomason/packer.nvim

-- Make sure that packer is installed
-- Packer can be installed with the following command:
-- git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
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
  use 'hrsh7th/nvim-compe' 

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
  -- Note: Using fork of the orinal plugin to remove some padding
  use {'twanh/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
  
  -- Markdown syntax highlighting, matching, rules and mappings...
  use {
    'plasticboy/vim-markdown',
    requires = {{'godlygeek/tabular'}}
  }

  use 'metakirby5/codi.vim'

end)

