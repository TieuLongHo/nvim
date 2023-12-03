local null_ls = require("null-ls")
-- code action sources
local code_actions = null_ls.builtins.code_actions

-- diagnostic sources
local diagnostics = null_ls.builtins.diagnostics

-- formatting sources
local formatting = null_ls.builtins.formatting

-- register any number of sources simultaneously
local sources = {
	-- Python
	formatting.ruff,
	diagnostics.flake8,	-- Lua
	-- C, C++, C++/CLI
	formatting.astyle,
	diagnostics.cppcheck,
	-- JS etc.
	formatting.prettier,
	diagnostics.eslint_d,
	-- code_actions.eslint_d,
	-- Git commits
	diagnostics.commitlint,
	-- Bash and Zsh
	formatting.beautysh,
	code_actions.shellcheck,
	-- general typos
	code_actions.cspell,
	-- diagnostics.cspell,
}

-- formattinh on save.
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
require("null-ls").setup({
	-- you can reuse a shared lspconfig on_attach callback here
	sources = sources,
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					-- vim.lsp.buf.formatting_sync()
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
})
