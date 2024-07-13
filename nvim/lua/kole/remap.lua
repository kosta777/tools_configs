vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) --while in normal mode, if i press leader-pv, this cmd will be executed

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- the greatest remap ever indeed, this makes it so that you can repeat pasting over something without losing what was yanked
vim.keymap.set("x", "<leader>p", "\"_dP")

-- leader y to copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
