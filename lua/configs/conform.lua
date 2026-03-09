local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },    -- JS
    typescript = { "prettier" },    -- TS
    javascriptreact = { "prettier" },   -- JSX / React
    typescriptreact = { "prettier" },
    go = { "gofmt", "goimports",  "gofumpt" },               -- Go
    php = { "php_cs_fixer" },       -- PHP 
  },

  format_on_save = {
     -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
