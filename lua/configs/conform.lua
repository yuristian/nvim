local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },    -- JS
    typescript = { "prettier" },    -- TS
    react = { "prettier" },         -- JSX / React
    go = { "gofmt" },               -- Go
    php = { "php-cs-fixer" },       -- PHP 
  },

  format_on_save = {
     -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
