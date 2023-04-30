-- Options
vim.opt.relativenumber = true

-- Keymaps
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("i", "jk", "<ESC>", opts)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
