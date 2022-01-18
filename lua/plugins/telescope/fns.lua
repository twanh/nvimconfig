-- Custom functions (pickers) for telescope

-- Used to merge the defaults with the new settings
-- Note: If a and b contain the same key,
-- the value from a is overwritten with the one from b.
-- Therefore defaults can be overwritten by passing the new value as b.
local function merge(a, b)
  local result = {}
  for k,v in pairs(a) do
    result[k] = v
  end
  for k, v in pairs(b) do
    result[k] = v
  end
  return result
end

-- Default center dropdown with no preview
local center_no_prev = {
  layout_strategy = "center",
  layout_config = {
    prompt_position = "top",
    width = 85,
    height = 25,
  },
  previewer       = false,
  results_title   = false,
  prompt_title    = false,
  -- Border chars need to be changed to make the promt connect to the results
  borderchars = {
    { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},
    prompt = {"─", "│", " ", "│", "╭", "╮", "│", "│"},
    results = {"─", "│", "─", "│", "├", "┤", "╯", "╰"},
    preview = { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},
  },
}


local M = {}

-- General searches

-- Search buffers
M.search_buffers = function()
  return require('telescope.builtin').buffers(merge(center_no_prev, {
    results_title=" Current Buffers ",
   }))
end

-- Git search with the center_no_prev layout
M.simple_git = function()
  return require('telescope.builtin').git_files(merge(center_no_prev, {
    results_title=" Git Files ",
   }))
end
-- Default file search with the center_no_prev layout
M.simple_find = function()
  return require('telescope.builtin').find_files(merge(center_no_prev, {
    results_title=" Find Files ",
   }))
end

-- Custom folder seaches

-- Search through my notes folder
M.search_notes = function()
  return require("telescope.builtin").find_files(merge(center_no_prev, {
    results_title = 'Notes',
    cwd           = "~/Dropbox/notes/notes/",
  }))
end

-- Search through neovim config folder
M.search_config = function()
  return require("telescope.builtin").find_files(merge(center_no_prev, {
    cwd = "~/.config/neovim/",
  }))
end

-- Search though workspace folder
M.search_workspace = function()
  return require("telescope.builtin").find_files(merge(center_no_prev, {
    cwd = "~/workspace/",
  }))
end

-- LSP searches

-- Search through the symbols in the current file
M.search_doc_symbols = function()
  return require("telescope.builtin").lsp_document_symbols(center_no_prev)
end

-- Search through all diagnostics in the workspace otherise the open buffers
M.search_diagnostics = function()
  return require("telescope.builtin").lsp_workspace_diagnostics(merge(center_no_prev, {
    -- Remove extra space so the border does not get screwd up
    selection_caret = "ﰲ ",
  }))
end


return M
