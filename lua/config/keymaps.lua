-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<M-h>", "<CMD>BufferLineMovePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-l>", "<CMD>BufferLineMoveNext<CR>", { noremap = true, silent = true })
