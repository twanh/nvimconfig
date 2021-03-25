
local M = {}
-- Search through my notes
M.search_notes = function()

	require("telescope.builtin").find_files({
		cwd = "~/Dropbox/notes/notes/",
		prompt = "~ Notes ~",
	})

end

M.search_school = function()

require("telescope.builtin").find_files({
	cwd = "~/Dropbox/notes/notes/school/",
	prompt = "~ School ~",
	layout_strategy='horizontal'
	-- layout_options = {
	-- 	previewer = false,
	-- }
})

end

return M
