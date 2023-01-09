-- vim.keymap.set("n", "", ":<CR>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set("n", "<leader>hl", ":nohlsearch<CR>")
vim.keymap.set("n", "<Leader>rn", ":set relativenumber!<CR>")
-- Cheatsheet
vim.keymap.set("n", "<Leader>h", ":Cheatsheet<CR>", { silent = true })

-- Nvim-Tree keymaps
vim.keymap.set("n", "M", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<c-m>", ":NvimTreeFindFileToggle<CR>")
vim.keymap.set("n", "<c-j>", "<c-w><c-j>")
vim.keymap.set("n", "<c-k>", "<c-w><c-k>")
-- Tabs
-- vim.keymap.set("n", "<c-h>", ":tabr<CR>")
-- vim.keymap.set("n", "<c-l>", ":tabl<CR>")
vim.keymap.set("n", "<c-h>", ":tabp<CR>")
vim.keymap.set("n", "<c-l>", ":tabn<CR>")
vim.keymap.set("n", "<c-x>", ":tabc<CR>")
vim.keymap.set("n", "<leader>t", ":tabnew<CR>")

vim.keymap.set("n", "<c-s>", ":w<CR>")
vim.keymap.set("n", "Q", ":qall!<CR>")
vim.keymap.set("n", "<c-q>", ":q!<CR>")

-- Paste from Clipboard
vim.keymap.set("i", "<c-V>", "<c-r>+")
-- vim.keymap.set("n", "<c-V>", '"+p')

-- ToggleTerm keymaps
-- vim.keymap.set("n", "<c-j>", ":ToggleTerm<CR>")
-- vim.keymap.set("t", "<c-j>", "exit<CR>")
vim.keymap.set("n", "<c-\\>v", ":ToggleTerm size=70 direction=vertical<CR>")
vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<esc>", [[<C-\><C-n>][<C-w>k]], { noremap = true })
