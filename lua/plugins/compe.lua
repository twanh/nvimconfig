-- Compe - For autocompletion
-- Ref: https://github.com/hrsh7th/nvim-compe

-- Keep track if it's the first run?
-- Note: Will this reset if the file is required??
--       It does seem to work just fine...
local first_run = true

-- Enabled compe with the wanted settings
local function enable_compe() 
  require'compe'.setup {
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = true;

    source = {
      path = true;
      buffer = true;
      calc = true;
      nvim_lsp = true;
      nvim_lua = true;
    };
  }
end

-- Disables compe
local function disable_compe() 
  require'compe'.setup {
    enabled = false;
  }
end

-- Make sure that compe is enabled by default
if (first_run == true) then 
  first_run = false
  enable_compe()
end

-- Keybinds
vim.cmd('inoremap <silent><expr> <C-n> compe#complete()')
vim.cmd('inoremap <silent><expr> <CR> compe#confirm("<CR>")')
vim.cmd('inoremap <silent><expr> <C-e> compe#close("C-e>")')

-- Toggle compe
vim.g.compe_active = true
local function toggle_compe()
  -- TODO: Make sure that it does not change the way the autocmd works
  if (vim.g.compe_active) then
    print("Turning off completion")
    vim.g.compe_active = false 
    disable_compe()
  else 
    print("Turning on completion")
    vim.g.compe_active = true 
    enable_compe()
  end
end

-- Map <leader>c to toggle completion
vim.api.nvim_set_keymap('n', '<leader>c', '<cmd>lua require("plugins.compe").toggle_compe()<cr>', { noremap = true })

-- Disable in markdown files
local autocmds = {
  -- Highlight when yanking
  disable_in_markdown = {
    -- Disable when entering markdown
    {[[ BufEnter *.md lua require('plugins.compe').disable_compe() ]]},
    -- Enable when leaving markdown
    {[[ BufLeave *.md lua require('plugins.compe').enable_compe() ]]},
  }
}
-- Create the autogroups with help from nvim_utitls
nvim_create_augroups(autocmds)

return {
  enable_compe  = enable_compe,
  disable_compe = disable_compe,
  toggle_compe  = toggle_compe
}
