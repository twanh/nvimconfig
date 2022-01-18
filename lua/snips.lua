-- Custom snippets, actually commands... (not using any snippets plugin)
-- Ref: https://www.youtube.com/watch?v=Q4I_Ft-VLAg
-- Note: nvim_utils plugin is required

-- This keymap is used to goto and replace <++> in the snippets
vim.api.nvim_set_keymap('i', ';;', '<Esc>/<++><Enter>"_c4l', { noremap = true })

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
    [[FileType markdown inoremap ;m $$ <++><Esc>5hi]]
  },
  latex_frac = {
    [[FileType markdown inoremap ;fr \frac{}{<++>}<++><Esc>10hi]]
  },
  codeblock = {
    -- ;c adds code block
    [[FileType markdown inoremap ;c ```<++><Enter><++><Enter>```<Esc>]]
  },
  link = {
    -- ;l adds [<++>](<++>)
    "FileType markdown inoremap ;l [<++>](<++>)"
  },
  bold = {
    -- ;b adds ****<++> and puts the cursor at the correct pos.
    "filetype markdown inoremap ;b **** <++><Esc>6hi"
  },
  italic = {
    -- ;i adds __<++> and puts the cursor at the correct position
    "filetype markdown inoremap ;i __ <++><Esc>5hi"
  },
}


nvim_create_augroups(md_snippets)
