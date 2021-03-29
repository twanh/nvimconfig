-- Custom simple statusline
--
-- Format: %-0{minWidth}.{maxWidth}{item}
--
-- Disable showing the mode 
vim.o.showmode = false
-- WIP
-- Start off with blank statusline
-- vim.o.statusline = " "
-- -- Mode
-- local modes = setmetatable({
--       ['n'] = 'NORMAL',
--       ['no'] = 'N·Operator Pending',
--       ['v'] = 'VISUAL',
--       ['V'] = 'VLine',
--       ['^V'] = 'VBlock',
--       ['s'] = 'Select',
--       ['S'] = 'SLine',
--       ['^S'] = 'SBlock',
--       ['i'] = 'INSERT',
--       ['ic'] = 'INSERT',
--       ['ix'] = 'INSERT',
--       ['R'] = 'Replace',
--       ['Rv'] = 'VReplace',
--       ['c'] = 'COMMAND',
--       ['cv'] = 'Vim Ex',
--       ['ce'] = 'Ex',
--       ['r'] = 'Prompt',
--       ['rm'] = 'More',
--       ['r?'] = 'CONFIRM',
--       ['!'] = 'Shell',
--       ['t'] = 'TERMINAL'
--     }, {
--       -- weird mode issue 
--       __index = function(_, _)
--         return 'VBlock'
--       end
--     }
-- )

-- vim.o.statusline = vim.o.statusline .. modes[vim.api.nvim_get_mode()['mode']]
-- File name
-- vim.o.statusline = vim.o.statusline .. "%t"

-- local function setStatusLine()
--   return modes[vim.api.nvim_get_mode()['mode']]  .. " " .. "%t"
-- end

 

-- api.nvim_exec([[
 --  augroup Statusline
 --  au!
 --  au WinEnter,BufEnter * setlocal statusline=%!v:lua require'statusline'.setStatusLine()
 --  augroup END
-- ]], false)

