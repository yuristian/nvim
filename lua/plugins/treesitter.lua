return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "lua", "go", "python", "javascript", "typescript", "rust", "c", "cpp" },
                highlight = { enable = true },
                indent = { enable = true },
                --Text Objects
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            -- Kamu bisa pakai huruf bebas, ini standar yang enak:
                            ["af"] = "@function.outer", -- Select seluruh fungsi
                            ["if"] = "@function.inner", -- Select isi fungsi saja
                            ["ac"] = "@class.outer",    -- Select seluruh class
                            ["ic"] = "@class.inner",    -- Select isi class
                            ["ap"] = "@parameter.outer",-- Select parameter fungsi
                            ["ip"] = "@parameter.inner",-- Select isi parameter
                        },
                    },
                    move = {
                        enable = true,
                        set_jumps = true, -- Biar bisa pakai Ctrl+o dan Ctrl+i
                        goto_next_start = {
                            ["]m"] = "@function.outer",
                            ["]]"] = "@class.outer",
                        },
                        goto_previous_start = {
                            ["[m"] = "@function.outer",
                            ["[["] = "@class.outer",
                        },
                    },
                },
            })
        end
    }
}
