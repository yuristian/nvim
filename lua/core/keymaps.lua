local keymap = vim.keymap
vim.g.mapleader = " "

-- Save & Window Navigation
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save File" })
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- Alt + Panah (Home & End)
keymap.set({ 'n', 'i', 'v' }, '<A-Left>', '<Home>', { silent = true })
keymap.set({ 'n', 'i', 'v' }, '<A-Right>', '<End>', { silent = true })
keymap.set('n', '<Home>', '^')
keymap.set('n', '<End>', '$')
keymap.set('i', '<Home>', '<C-o>^')
keymap.set('i', '<End>', '<C-o>$')

keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit Terminal Mode' })