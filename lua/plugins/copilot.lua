-- -- <leader>g enables copilot
-- vim.api.nvim_set_keymap('n',
--   '<leader>g', '<cmd>Copilot enable<cr>',
--   { noremap = true }
-- )

-- -- <leader>gg enables copilot
-- vim.api.nvim_set_keymap('n', 
--   '<leader>gg', '<cmd>Copilot disable<cr>',
--   { noremap = true}
--- )


require("copilot").setup({
  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 75,
    keymap = {
      accept = "<Tab>",
      accept_word = false,
      accept_line = false,
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
  },
  panel = { enabled = false },
})


-- https://www.reddit.com/r/neovim/comments/w2exp5/is_there_a_way_to_map_a_key_to_toggle_the_github/
local copilot_on = true
vim.api.nvim_create_user_command("CopilotToggle", function()
	if copilot_on then
		vim.cmd("Copilot disable")
		print("Copilot OFF")
	else
		vim.cmd("Copilot enable")
		print("Copilot ON")
	end
	copilot_on = not copilot_on
end, { nargs = 0 })

vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>CopilotToggle<CR>', { noremap = true })
