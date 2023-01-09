vim.cmd([[
    hi Normal ctermbg=NONE
  ]])
vim.keymap.set("n", "<c-s-Q>", ":qall!<CR>")

-- Paste from Clipboard
vim.keymap.set("i", "<c-s-V>", ":<c-r>+")

vim.g.neovide_regresh_rate = 144
vim.g.remember_window_size = false
-- vim.g.neovide_transparency = 0.5
-- vim.g.transparency = 0.8
