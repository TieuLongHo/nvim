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

-- Nvim-Tree keymaps
vim.keymap.set("n", "<c-n>", ":NvimTreeFindFileToggle<CR>")
vim.keymap.set("n", "<c-m>", ":NvimTreeFocus<CR>")
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
vim.keymap.set("n", "<c-q>", ":q!<CR>")
vim.keymap.set("n", "<c-s-Q>", ":qall!<CR>")

-- Paste from Clipboard
vim.keymap.set("i", "<c-s-V>", ":<c-r>+")
-- vim.keymap.set("n", "<c-V>", '"+p')

-- ToggleTerm keymaps
-- vim.keymap.set("n", "<c-j>", ":ToggleTerm<CR>")
-- vim.keymap.set("t", "<c-j>", "exit<CR>")
-- vim.keymap.set("n", "<c-j>v", ":ToggleTerm size=70 direction=vertical<CR>")
vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<c-o>", ":<C-U>v:count ToggleTerm<CR>")
-- nnoremap <silent><c-t>i "ToggleTerm"<CR>
--inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
local opts = { buffer = 0 }
vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)

vim.keymap.set("t", "<c-1>", ":w<CR>")
