-- Airline
-- Ref: https://github.com/vim-airline/vim-airline

-- Enable tabline (nice tabs)
-- Note: The `#` is a bit weird and does not work in lua (afaik) so using vim.cmd() instead.
vim.cmd([[
  let g:airline#extensions#tabline#enabled       = 1
  let g:airline#extensions#tabline#left_sep      = ''
  let g:airline#extensions#tabline#left_alt_sep  = ''
  let g:airline#extensions#tabline#right_sep     = ''
  let g:airline#extensions#tabline#right_alt_sep = ''
  let g:airline#extensions#tabline#formatter     = 'unique_tail'
  let g:airline_powerline_fonts                  = 0
  let g:airline_left_sep                         = ''
  let g:airline_right_sep                        = ''
  let g:airline_theme                            = 'ayu'

]])
