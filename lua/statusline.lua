-- Custom simple statusline
-- Inspired on: https://elianiva.my.id/post/neovim-lua-statusline
--
-- TODO:
-- Make sure each buffer shows its own information
-- Currently the stausline of inactive buffers shows the information of the active buffer

-- Disable showing the mode 
vim.o.showmode = false

local M = {}

-- All possible vim modes
local modes = setmetatable({
      ['n'] = 'N',
      ['no'] = 'N-p',
      ['v'] = 'V',
      ['V'] = 'VL',
      ['^V'] = 'VB',
      ['s'] = 'S',
      ['S'] = 'SL',
      ['^S'] = 'SB',
      ['i'] = 'I',
      ['ic'] = 'I',
      ['ix'] = 'I',
      ['R'] = 'R',
      ['Rv'] = 'VR',
      ['c'] = 'C',
      ['cv'] = 'VE',
      ['ce'] = 'E',
      ['r'] = 'P',
      ['rm'] = 'M',
      ['r?'] = 'C',
      ['!'] = 'S',
      ['t'] = 'T'
    }, {
      -- weird mode issue
      __index = function(_, _)
        return 'VBlock'
      end
    }
)


-- Gets the current mode 
-- and converts it the the character combination to show
M.get_current_mode = function()
  return modes[vim.api.nvim_get_mode()['mode']] .. " "
end

-- Gets the current buffer number
M.get_current_buf_nr = function() 
  return '﬘ %n '
end

-- Gets the curren filename (using the statusline symbol)
M.get_current_filename = function(self)
  local file_name, file_ext = vim.fn.expand("%:t"), vim.fn.expand("%:e")
  local icon = require'nvim-web-devicons'.get_icon(file_name, file_ext, { default = true })
  return string.format("%s %s", icon, "%t")
end

-- Shows [+] is edited
M.get_modified = function()
  return '%m'
end 

-- Shows line:col and words if in markdown file
M.get_line_col_words = function(self)
  local filetype = vim.bo.filetype
  -- If in a markdown file show wordcount
  if filetype == 'markdown' then
    return ' %l/%L %{wordcount().words} words '
  end
  return ' %l/%L'
end

-- The active buffer statusline
M.set_active = function(self)
 
  local mode = self:get_current_mode()
  local filename = self.get_current_filename()
  local modified = self.get_modified()
  local line_col_word = self.get_line_col_words()
  local bufnr = self.get_current_buf_nr()
  return table.concat({
    bufnr, mode, filename, modified,
    "%=", 
    line_col_word
  })

end

-- Inactive buffers statusline
M.set_inactive = function(self) 
  -- Just show the filename and modified
  local filename = self.get_current_filename()
  local modified = self.get_modified()
  -- leave first section and last section empty to make centered
  return "%=" .. filename .. modified .. "%="
end

-- Easily switch between active and inactive
Statusline = setmetatable(M, {
  __call = function(statusline, mode)
    if mode == "active" then return statusline:set_active() end
    if mode == "inactive" then return statusline:set_inactive() end
  end
})

-- Use a autogroup to update the statusline
vim.api.nvim_exec([[
  augroup Statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline('active')
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline('inactive')
  augroup END
]], false)

