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

-- Kind icons for better visual appearance
local kind_icons = {
  Text = "󰉿",
  Method = "󰆧",
  Function = "󰊕",
  Constructor = "",
  Field = "󰜢",
  Variable = "󰀫",
  Class = "󰠱",
  Interface = "",
  Module = "",
  Property = "󰜢",
  Unit = "󰑭",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋",
  Snippet = "",
  Color = "󰏘",
  File = "󰈙",
  Reference = "󰈇",
  Folder = "󰉋",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "󰙅",
  Event = "",
  Operator = "󰆕",
  TypeParameter = "",
}

cmp.setup({
  completion = {
    autocomplete = { cmp.TriggerEvent.TextChanged },
    completeopt = 'menu,menuone,noinsert',
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered({
      border = 'rounded',
      winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None',
    }),
    documentation = cmp.config.window.bordered({
      border = 'rounded',
      winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None',
    }),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  }),
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      -- Add kind icon
      vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind] or "", vim_item.kind)

      -- Limit abbr width to prevent overflow
      local max_width = 50
      if #vim_item.abbr > max_width then
        vim_item.abbr = string.sub(vim_item.abbr, 1, max_width - 3) .. "..."
      end

      -- Set source name
      local source_names = {
        nvim_lsp = "[LSP]",
        luasnip = "[Snip]",
        buffer = "[Buf]",
        path = "[Path]",
      }
      vim_item.menu = source_names[entry.source.name] or string.format("[%s]", entry.source.name)

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
