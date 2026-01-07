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
	-- Disable inline suggestions, as they conflict with nvim-cmp
  suggestion = { enabled = false },
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
