return {
    -- LSP Plugins
    "neovim/nvim-lspconfig",
    { "williamboman/mason.nvim", config = true },
    "williamboman/mason-lspconfig.nvim",
    
    -- Autocomplete Plugins
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",

    config = function()
        -- Mason Setup
        require("mason-lspconfig").setup({
            ensure_installed = { "gopls", "pyright", "ts_ls", "rust_analyzer", "clangd", "lua_ls" }
        })

        -- LSP Config
        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local on_attach = function(_, bufnr)
            local opts = { buffer = bufnr, silent = true }
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go To Definition" })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Hover Documentation" })
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename" })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code Action" })
            vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "Go To Preferences" })
            vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { buffer = bufnr, desc = "Prev Diagnostics" })
            vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { buffer = bufnr, desc = "Next Diagnostics" })
        end

        local servers = { "gopls", "pyright", "ts_ls", "rust_analyzer", "clangd", "lua_ls", "html", "dartls" }
        for _, lsp in ipairs(servers) do
            lspconfig[lsp].setup({ capabilities = capabilities, on_attach = on_attach })
        end

        -- CMP Setup
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        cmp.setup({
            snippet = { expand = function(args) luasnip.lsp_expand(args.body) end },
            mapping = cmp.mapping.preset.insert({
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then luasnip.expand_or_jump()
                    else fallback() end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then luasnip.jump(-1)
                    else fallback() end
                end, { "i", "s" }),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" }, { name = "buffer" }, { name = "path" }, { name = "luasnip" },
            }),
        })
    end
}