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
-- Cheatsheet
vim.keymap.set("n", "<Leader>h", ":Cheatsheet<CR>", { silent = true }) -- open cheatsheet

-- Nvim-Tree keymaps
vim.keymap.set("n", "M", ":NvimTreeFocus<CR>", { silent = true }) -- focus on vimtree
vim.keymap.set("n", "<c-m>", ":NvimTreeFindFileToggle<CR>", { silent = true }) -- open vimtree
-- Tabs
-- vim.keymap.set("n", "<c-h>", ":tabr<CR>") -- right tab
-- vim.keymap.set("n", "<c-l>", ":tabl<CR>") -- left tab
vim.keymap.set("n", "<c-h>", ":tabp<CR>", { silent = true }) -- previous tab
vim.keymap.set("n", "<c-l>", ":tabn<CR>", { silent = true }) -- next tab
vim.keymap.set("n", "<c-x>", ":tabc<CR>", { silent = true }) -- close tab
vim.keymap.set("n", "<leader>t", ":tabnew<CR>", { silent = true }) -- new tab

vim.keymap.set("n", "<c-s>", ":w<CR>", { silent = true }) -- save
vim.keymap.set("n", "Q", ":qall!<CR>", { silent = true }) -- quit all
vim.keymap.set("n", "<c-q>", ":q!<CR>", { silent = true }) -- quit

-- Paste from Clipboard
vim.keymap.set("i", "<c-V>", "<c-r>+") -- paste from clipboard
-- vim.keymap.set("n", "<c-V>", '"+p') 

-- ToggleTerm keymaps
-- vim.keymap.set("n", "<c-j>", ":ToggleTerm<CR>") 
-- vim.keymap.set("t", "<c-j>", "exit<CR>")
vim.keymap.set("n", "<c-\\>v", ":ToggleTerm size=70 direction=vertical<CR>", { silent = true }) -- vertical term
vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true }) -- lazygit
vim.keymap.set("t", "<esc>", [[<C-\><C-n><C-w>k]], { noremap = true }) -- exit terminal mode

vim.keymap.set("n", "<leader>rn", function()
	return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true }) -- rename

-- Tag menu keymap
vim.keymap.set("n", "<F8>", ":TagbarToggle<CR>") -- tagbar
vim.g.copilot_assume_mapped = true


-- move lines up and down
vim.api.nvim_set_keymap('n', '<C-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':m .-2<CR>==', { noremap = true, silent = true })

-- move lines up and down in visual mode
vim.api.nvim_set_keymap('x', '<C-j>', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-k>', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })

