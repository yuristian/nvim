require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "LazyGit" }) --LazyGit
map("n", "<leader>w", ":w<CR>", { desc = "Save" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
