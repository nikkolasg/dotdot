-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymaps = vim.api.nvim_set_keymap
--
keymaps("n", "<leader>rt", ":RustTest<CR>", { noremap = true, silent = true })
keymaps("n", "<leader>tg", ":ToggleTerm direction=float<CR>", { noremap = true, silent = true })
--keymaps("i", "<leader>tg", "<Esc>:ToggleTerm direction=float<CR>", { noremap = true, silent = true })
keymaps("t", "<leader>tg", "<C-\\><C-n>:ToggleTerm direction=float<CR>", { noremap = true, silent = true })
