-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<tab>", ":BufferLineCycleNext<CR>", { desc = "Cycle next buffer" })
vim.keymap.set("n", "<S-tab>", ":BufferLineCyclePrev<CR>", { desc = "Cycle prev buffer" })
vim.keymap.set("n", "<Space>t", ":ToggleTerm<CR>", { desc = "Toggle terminal" })

vim.keymap.set("n", "gd", function()
  require("omnisharp_extended").lsp_definition()
end)
