-- Custom snippets, actually commands... (not using any snippets plugin) 
-- Ref: https://www.youtube.com/watch?v=Q4I_Ft-VLAg 
-- Note: nvim_utils plugin is required

-- This keymap is used to goto and replace <++> in the snippets
vim.api.nvim_set_keymap('i', '<Space><Space>', '<Esc>/<++><Enter>"_c4l', { noremap = true })
vim.api.nvim_set_keymap('n', '<Space><Space>', '<Esc>/<++><Enter>"_c4l', { noremap = true })

-- Markdown snippets
-- TODO:
--  - Add tables


local md_snippets = {

  frontmatter = {
    -- ;fm adds common used frontmatter
    [[FileType markdown inoremap ;fm ---<Enter>title: <++><Enter>date: <++><Enter>tags: <++><Enter>---<Esc>]]
  },
  latexmath = {
    -- ;m adds $$ then puts the curser between $$
    [[FileType markdown inoremap ;m $$<Esc>i]]
  },
  codeblock = {
    -- ;c adds code block
    [[FileType markdown inoremap ;c ```<++><Enter><++><Enter>```<Esc>]]
  },
  link = {
    -- ;l adds [<++>](<++>)
    "FileType markdown inoremap ;l [<++>](<++>)"
  },
  image = {
    -- ;im adds [<++>](<++>)
    "filetype markdown inoremap ;i ![<++>](<++>)"
  },
  bold = {
    -- ;b adds **<++>**<++>
    "filetype markdown inoremap ;b **<++>**<++>"
  },
  italic = {
    -- ;b adds **<++>**<++>
    "filetype markdown inoremap ;i _<++>_<++>"
  },
}


nvim_create_augroups(md_snippets)
