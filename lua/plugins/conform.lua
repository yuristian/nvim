return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            javascript = { "prettier" },
            typescript = { "prettier" },
            javascriptreact = { "prettier" },
            typescriptreact = { "prettier" },
            dart = { "dart_format" },
            go = { "gofmt", "goimports" },
            python = { "isort", "black" },
            html = { "prettier" },
            css = { "prettier" },
            json = { "prettier" },
        },
        format_on_save = { lsp_fallback = true, timeout_ms = 1000 },
    }, config = function(_, opts)
        require("conform").setup(opts)
        vim.keymap.set("n", "<leader>cf", function()
            require("conform").format({ async = true, lsp_fallback = true })
        end, { desc = "Format Code" })
    end
}

