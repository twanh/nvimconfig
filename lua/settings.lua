-- General settinsg
-- Used to be lets and sets...

-- File encoding 
vim.o.encoding     = 'utf-8'
vim.o.fileencoding = 'utf-8'
vim.o.guifont      = 'Fira\\ Code' -- Use fira code font

-- Tabs vs Spaces xD
vim.o.shiftwidth  = 2 -- Use 2 spaces for auto indent by default
vim.o.expandtab   = true -- Convert tab to spaces
vim.o.smartindent = true -- Better indentation

-- Saving and file management
vim.o.backup   = false -- Do not use backup files
vim.o.swapfile = false -- Do not use swapfiles
vim.o.hidden   = true -- Keep multiple buffers open

-- Visual stuff 
-- Use relativenumbers but show the current line number
vim.o.number         = true
vim.o.relativenumber = true 
vim.o.wrap           = false -- DO NOT USE WRAP
vim.o.background     = 'dark'
vim.wo.signcolumn    = 'yes' -- Always show the sign columnm, otherwise it creates random movement
vim.o.showtabline    = 2 -- Show tabs
vim.o.termguicolors  = true
-- Comletion
vim.o.completeopt = "menuone,noselect"

-- Spelling
vim.o.spelllang = 'en,nl' -- Make sure that nl lang is installed in spell dir
-- Auto enable spell checking in markdown file and git commit messages
vim.cmd('autocmd FileType markdown setlocal spell')
vim.cmd('autocmd FileType gitcommit setlocal spell')


-- AUTO COMMANDS
-- Creating autocommand with vim.cmd does not always work correctly
-- nvim_utitls has a good helper function for this.

-- Alll autocmd should be stored in this table
local autocmds = {
  -- Highlight when yanking
  highlight_yank = {
    { [[TextYankPost * silent! lua vim.highlight.on_yank{higroup="Search", timeout=85} ]]},
  }
}
-- Create the autogroups with help from nvim_utitls
nvim_create_augroups(autocmds)

