-- Bufferline
-- Ref: https://github.com/akinsho/nvim-bufferline.lua

require'bufferline'.setup{
  options = {
    -- Show the buffer id
    numbers = "buffer_id",
    -- number_style="",
    -- Don't show the close icons
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indications = true,
    -- Alays show the line
    always_show_buffer_line = true,
    -- Make the tabs a bit smaller
    tab_size = 15,
    enforce_regular_tabs = true,
  }
 }
