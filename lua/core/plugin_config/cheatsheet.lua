require("cheatsheet").setup({
	bundled_cheatsheets = {
		-- only show the default cheatsheet
		enabled = { "default" },
	},
	bundled_plugin_cheatsheets = {
		-- show cheatsheets for all plugins except gitsigns
		disabled = { "gitsigns.nvim" },
	},
	telescope_mappings = {
		["<CR>"] = require("cheatsheet.telescope.actions").select_or_execute,
		["<A-CR>"] = require("cheatsheet.telescope.actions").select_or_fill_commandline,
	},
})
