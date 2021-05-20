-- General settinsg
-- Used to be lets and sets...

-- Setting options using vim.o is not enough
-- Some options need to be set in window scope (vim.wo), or buffer scope (vim.bo)
-- To find which options needs to be set in what scope see: `:help <option>`
-- In order to make it more easy to set all these options correctly I use set_option
-- Until pull request #13479 is merged this is a okay alternative

-- The scopes options can be assigned to
local option_scopes = {o = vim.o, b = vim.bo, w = vim.wo}

-- Set the option in the correct scope
local function set_option(scope, key, value)
  option_scopes[scope][key] = value
  -- If the options is in window or buffer scope set it in global scope aswell
  if scope ~= 'o' then option_scopes['o'][key] = value end
end

-- File encoding 
set_option('o', 'encoding', 'utf-8')
set_option('o', 'fileencoding', 'utf-8')
set_option('o', 'guifont', 'Fira\\ Code') -- Use fira code nerd font

-- Tabs 
set_option('b', 'shiftwidth', 2)      -- Use 2 spaces for auto indent by default
set_option('b', 'expandtab', true)    -- Convert tab to spaces
set_option('b', 'autoindent', true)   -- Better indentation
set_option('b', 'smartindent', true)  -- Better indentation

-- Saving and file management
set_option('o', 'backup', false)   -- Do not use backup files
set_option('o', 'swapfile', false) -- Do not use swapfiles
set_option('o', 'hidden', true)    -- Keep multiple buffers open

-- Visual stuff 
-- Use relativenumbers but show the current line number
set_option('w', 'number', true)
set_option('w', 'relativenumber', true)
set_option('w', 'wrap', false)          -- DO NOT USE WRAP
set_option('o', 'background', 'dark')
set_option('w', 'signcolumn', 'yes')    -- Always show the sign columnm, otherwise it creates random movement
set_option('o', 'showtabline', 2)       -- Show tabs
set_option('w', 'cursorline', true)
set_option('o', 'termguicolors', true)
set_option('w', 'colorcolumn', '79')
 -- Completion
set_option('o', 'completeopt',  'menuone,noselect')

-- Spelling
set_option('b', 'spelllang', 'en,nl') -- Make sure that nl lang is installed in spell dir
set_option('b', 'spellfile', '/home/twanh/.config/nvim/spell/custom.utf-8.add') -- Use a spellfile to save words to
-- Auto enable spell checking in markdown file and git commit messages
vim.cmd('autocmd FileType markdown setlocal spell')
vim.cmd('autocmd FileType gitcommit setlocal spell')

-- Searching
set_option('o', 'ignorecase', true)

-- Window management
set_option('o', 'splitright', true)  -- Split to the right
set_option('o', 'splitbelow', false) -- Make sure to split above the curren window

-- AUTO COMMANDS
-- Creating autocommand with vim.cmd does not always work correctly
-- nvim_utils has a good helper function for this.

-- All autocmd should be stored in this table
local autocmds = {
  -- Highlight when yanking
  highlight_yank = {
    { [[TextYankPost * silent! lua vim.highlight.on_yank{higroup="Search", timeout=85} ]]},
  },
  -- Highlight 'LETOP:' (only) in markdown files 
  highlight_letop = {
    { [[BufEnter *.md silent! match Todo /LETOP:/ ]]},
  },
  highlight_note = {
    { [[BufEnter *.md silent! match Todo /Note:/ ]]},
  },
}

-- Create the autogroups with help from nvim_utitls
nvim_create_augroups(autocmds)
