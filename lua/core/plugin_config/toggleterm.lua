require("toggleterm").setup({
	direction = "horizontal",
	close_on_exit = true,
	auto_scroll = true,
	open_mapping = [[<c-\>]],
	insert_mappings = true, -- whether or not the open mapping applies in insert mode
	terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
})

-- terminal for lazygit
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _lazygit_toggle()
	lazygit:toggle()
end
