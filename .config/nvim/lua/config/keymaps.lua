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
vim.keymap.set("n", "<leader>hl", ":Leet lang<CR>", { desc = "Select Language" })
vim.keymap.set("n", "<leader>ht", ":Leet tabs<CR>", { desc = "Show Tabs" })
vim.keymap.set("n", "<leader>hR", ":Leet restore<CR>", { desc = "Restore" })

local wk = require("which-key")
wk.add({
  { "<leader>h", group = "leetcode" }, -- group
  { "<leader>d", group = "debugging" }, -- group
})

local map = vim.keymap.set

-- Nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map(
  "n",
  "<Leader>dd",
  "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  { desc = "Debugger set conditional breakpoint" }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- rustaceanvim
map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })
