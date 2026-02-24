return {
    -- Auto pairs () [] {}
    { 
        "windwp/nvim-autopairs", 
        config = true 
    },

    -- Commenting (gcc atau gc)
    { 
        "numToStr/Comment.nvim", 
        opts = {} 
    },

    -- ToggleTerm (Terminal di dalam Neovim)
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup({
                size = 20,
                open_mapping = [[<c-\>]],
                direction = "horizontal",
            })
        end
    },

    -- Which-Key (Info shortcut)
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.opt.timeout = true
            vim.opt.timeoutlen = 100
        end,
        config = function()
            local wk = require("which-key")
            wk.setup({
                preset = "modern",
                win = {
                    col = -1, row = 1, width = 40, border = "single",
                },
                layout = {
                    width = { min = 20, max = 40 }, spacing = 3,
                },
            })
            wk.add({
                { "<leader>f",  group = "Find (Telescope)" },
                { "<leader>r",  group = "Rename/LSP" },
                { "<leader>c",  group = "Code Action/Diagnostics" },
                { "<leader>e",  desc = "Explorer (NvimTree)" },
                { "<leader>w",  desc = "Save File" },
                { "<leader>cf", desc = "Format Code" },
            })
        end
    }
}