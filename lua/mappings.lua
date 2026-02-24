require "nvchad.mappings"

-- add yours here
 
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>t", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" }) --ToggleTerm
map("n", "<leader>g", "<cmd>LazyGit<CR>", { desc = "LazyGit" }) --LazyGit
map("n", "<leader>w", ":w<CR>", { desc = "Save" })

