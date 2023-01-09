require("core.plugins")
require("core.keymaps")
require("core.plugin_config")
require("core.options")

if vim.g.neovide then
	require("core.neovide")
end
