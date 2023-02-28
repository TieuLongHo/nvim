-- Set lualine as statusline
-- See `:help lualine.txt`
require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		-- 		component_separators = "|",
		-- 		section_separators = "",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
	},
	extensions = {
		"fugitive",
		"nvim-tree",
	},
})
