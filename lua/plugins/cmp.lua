-- local cmp = require'cmp'
--
-- local luasnip = require "luasnip"

-- cmp.setup({
--   enabled = true,
--   autocomplete = true,
--   debug = false,
--   snippet = {
--     expand = function(args)
--       luasnip.lsp_expand(args.body)
--     end,
--   },
--   mapping = cmp.mapping.preset.insert({
--     -- ['<C-n>'] = cmp.mapping.complete(),
--     ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
--     -- ['<C-n>'] = function(fallback)
--     --   if cmp.visible() then
--     --     cmp.api.select_next_item({ behavior = cmp.SelectBehavior.Select })
--     --   else
--     --     cmp.complete()
--     --   end
--     -- end,
--     -- TODO: Fix <CR> without selecting an item also autocompletes instead of newline
--     ['<CR>'] = cmp.mapping.confirm({ select = true }),
--     ['<C-e>'] = cmp.mapping.abort(),
--   }),
--   min_length = 1,
--   preselect = cmp.PreselectMode.Enable,
--   throttle_time = 80,
--   source_timeout = 200,
--   incomplete_delay = 400,
--   max_width = 100,
--   formatting = {
--     fields = { "menu", "abbr", "kind" },
--     max_width = 100,
--     format = function(entry, vim_item)
--       -- Shorten menu name
--       vim_item.menu = string.sub(entry.source.name, 1, 3)
--       return vim_item
--     end
--   },
--   sources = cmp.config.sources({
--     { name = 'path' },
--     { name = 'nvim_lsp' , priority = 1000},
--     { name = 'buffer' },
--     { name = 'calc' },
--     { name = 'nvim_lua' },
--     { name = 'omni', keyword_length = 3,
--       options = {
--         filetypes = {'tex'},
--       }
--     },
--     { name = 'luasnip' },
--   })
-- })

-- -- Disable in markdown files
-- local autocmds = {
--   disable_in_markdown = {
--     -- Disable when entering markdown
--     {[[ BufEnter *.md lua require('cmp').setup.buffer { enabled = false } ]]},
--     -- Enable when leaving markdown
--     {[[ BufLeave *.md lua require('cmp').setup.buffer { enabled = true } ]]},
--   }
-- }

-- -- Function to create autogroups
-- local function nvim_create_augroups(definitions)
--   for group_name, events in pairs(definitions) do
--     vim.cmd('augroup ' .. group_name)
--     vim.cmd('autocmd!')
--     for _, event in ipairs(events) do
--       for _, command in ipairs(event) do
--         vim.cmd('autocmd ' .. command)
--       end
--     end
--     vim.cmd('augroup END')
--   end
-- end

-- -- Create the autogroups
-- nvim_create_augroups(autocmds)
local cmp = require'cmp'
local luasnip = require "luasnip"

cmp.setup({
  -- Wrap these in the 'completion' table
  completion = {
    autocomplete = { cmp.TriggerEvent.TextChanged },
    completeopt = 'menu,menuone,noinsert',
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ 
      behavior = cmp.ConfirmBehavior.Replace,
      select = false, 
    }),
  }),
  formatting = {
    fields = { "menu", "abbr", "kind" },
    format = function(entry, vim_item)
      vim_item.menu = string.sub(entry.source.name, 1, 3)
      return vim_item
    end
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp', priority = 1000 },
    { name = 'luasnip', priority = 750 },
    { name = 'buffer', priority = 500 },
    { name = 'path', priority = 250 },
  })
})
