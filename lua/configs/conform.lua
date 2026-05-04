local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofumpt", "goimports" },
    php = { "laravel-pint" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
  },
  -- Tambahkan ini untuk memperbaiki masalah spasi di Windows
  formatters = {
    ["laravel-pint"] = {
      command = "pint", -- atau full path ke pint.bat
    },
    stylua = {
      -- command = "stylua",
      -- Jika masih error, gunakan full path dengan tanda kutip:
      command = '"C:\\Users\\Yuristian Ardianto\\AppData\\Local\\nvim-data\\mason\\bin\\stylua.CMD"',
    },
  },
  format_on_save = {
    --These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
