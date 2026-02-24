local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.smarttab = true
opt.autoindent = true
opt.termguicolors = true
opt.cursorline = true
opt.wrap = true
opt.linebreak = true
opt.showbreak = "→ "
opt.signcolumn = "yes"
opt.undofile = true
opt.clipboard = "unnamedplus"

-- Tambahan khusus Windows jika masih rewel
if vim.fn.has("win32") == 1 then
    vim.g.clipboard = {
        name = "win32yank-wsl",
        copy = {
            ["+"] = "win32yank.exe -i --crlf",
            ["*"] = "win32yank.exe -i --crlf",
        },
        paste = {
            ["+"] = "win32yank.exe -o --lf",
            ["*"] = "win32yank.exe -o --lf",
        },
        cache_enabled = 0,
    }
end

