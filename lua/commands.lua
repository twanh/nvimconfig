-- Custom commands

-- Create a commadn ReloadInit to reload the init.lua file
vim.cmd('command! ReloadInit luafile ~/.config/nvim/init.lua')

-- Edit todo file
-- This command requires $NOTESDIR to be set
vim.cmd('command! Etodo vs $NOTESDIR/todo.md')

-- Rename (using) lsp command
vim.cmd('command! Rename lua vim.lsp.buf.rename()')
