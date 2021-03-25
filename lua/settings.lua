-- General settinsg
-- Used to be lets and sets...

-- File encoding 
vim.o.encoding     = 'utf-8'
vim.o.fileencoding = 'utf-8'
vim.o.guifont      = 'Fira\\ Code' -- Use fira code font

-- Tabs vs Spaces
vim.o.shiftwidth  = 2 -- Use 2 spaces for auto indent by default
vim.o.expandtab   = true -- Convert tab to spaces
vim.o.smartindent = true -- Better indentation

-- Saving and file management
vim.o.backup   = false -- Do not use backup files
vim.o.swapfile = false -- Do not use swapfiles
vim.o.hidden   = true -- Keep multiple buffers open

-- Visual stuff 
vim.o.relativenumber = true -- Use relative line numbers
vim.o.wrap           = false -- DO NOT USE WRAP
vim.o.background     = 'dark'
vim.wo.signcolumn    = 'yes' -- Always show the sign columnm, otherwise it creates random movement
vim.o.showtabline    = 2 -- Show tabs
vim.o.termguicolors  = true
-- Spelling
vim.o.spelllang = 'en,nl' -- Make sure that nl lang is installed in spell dir
-- Comletion
vim.o.completeopt = "menuone,noselect"

