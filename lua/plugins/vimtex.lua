vim.g.vimtex_compiler_latexmk = {
  build_dir = '',
  callback = 1,
  continuous = 1,
  executable = 'latexmk',
  hooks = {},
  executable = 'latexmk',
  options = {
    '-verbose',
    '-file-line-error',
    '-synctex=1',
    '-interaction=nonstopmode',
    '-shell-escape',
  },
}
vim.g.tex_flavo = 'latex'
vim.g.vimtex_view_method = 'zathura'
-- vim.g.tex_conceal = 'atbdmg'
--
-- TODO:
-- Auto clean when closing a tex file
