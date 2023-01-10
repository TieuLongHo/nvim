require("core.plugins")
vim.o.termguicolors = true
require("core.keymaps")
require("core.plugin_config")
require("core.options")
if vim.g.neovide then
	require("core.neovide")
end
