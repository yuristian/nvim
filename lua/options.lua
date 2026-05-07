require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = 'both' -- to enable cursorline!
o.number = true
o.relativenumber = true
o.numberwidth = 2
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2
o.expandtab = true
o.smartindent = true

o.ignorecase = true
o.smartcase = true
o.cursorline = true
o.termguicolors = true
o.updatetime = 250
o.timeoutlen = 400

o.swapfile = false
o.backup = false
o.undofile = true
o.showcmd = true
o.hlsearch = true
o.title = true

o.clipboard = "unnamedplus"
