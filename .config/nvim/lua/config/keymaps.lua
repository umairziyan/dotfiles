-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", { silent = true })
-- vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", { silent = true })
-- vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", { silent = true })
-- vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", { silent = true })

vim.keymap.set("n", "<leader>hs", ":Leet submit<CR>", { desc = "Submit Code" })
vim.keymap.set("n", "<leader>hr", ":Leet run<CR>", { desc = "Run Code" })
vim.keymap.set("n", "<leader>hh", ":Leet<CR>", { desc = "Home" })
vim.keymap.set("n", "<leader>ho", ":Leet open<CR>", { desc = "Open in Browser" })
vim.keymap.set("n", "<leader>hi", ":Leet info<CR>", { desc = "Info" })
vim.keymap.set("n", "<leader>hl", ":Leet list<CR>", { desc = "View Problem List" })
vim.keymap.set("n", "<leader>ht", ":Leet tabs<CR>", { desc = "Show Tabs" })
vim.keymap.set("n", "<leader>hR", ":Leet restore<CR>", { desc = "Restore" })

local wk = require("which-key")
wk.add({
  { "<leader>h", group = "leetcode" }, -- group
})

-- Disable arrow keys in normal, insert, and visual modes
vim.api.nvim_set_keymap("n", "<Up>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Down>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Left>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Right>", "<nop>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<Up>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<Down>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<Left>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<Right>", "<nop>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v", "<Up>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<Down>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<Left>", "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<Right>", "<nop>", { noremap = true, silent = true })

-- Disable copilot
vim.g.copilot_enabled = false
