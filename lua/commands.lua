-- Custom commands

-- Create a commadn ReloadInit to reload the init.lua file
vim.cmd('command! ReloadInit luafile ~/.config/nvim/init.lua')

-- Edit todo
vim.cmd('command!  Etodo vs $NOTESDIR/todo.md')
