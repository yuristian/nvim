return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        -- Optional: untuk ikon yang lebih cantik
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("noice").setup({
            lsp = {
                -- override markdown rendering agar menggunakan Treesitter
                progress = { enabled = true },
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.set_header_highlight"] = true,
                    ["眼.lsp.util.stylize_markdown"] = true,
                },
            },
            -- Menampilkan error di pojok kanan atas sebagai notifikasi
            routes = {
                {
                    filter = { event = "msg_show", kind = "error" },
                    opts = { skip = true }, -- atau arahkan ke nvim-notify
                },
            },
            -- Konfigurasi utama agar command line ada di tengah
            presets = {
                bottom_search = false,    -- pindahkan search ke tengah
                command_palette = true,   -- ini yang membuat command line di tengah (seperti spotlight)
                long_message_to_split = true, 
                inc_rename = false,       -- set true jika kamu pakai plugin inc-rename
                lsp_doc_border = false,   -- tambahkan border ke hover doc
            },
            -- Tambahkan ini:
            messages = {
                enabled = true, -- Aktifkan pesan bawaan
                view = "mini",  -- Gunakan tampilan kecil di pojok untuk pesan rutin
            },
        })
    end,

    vim.keymap.set("n", "<leader>w", function()
        vim.cmd("silent! write")
        -- Opsional: tampilkan notifikasi kecil lewat Snacks atau Noice
        require("noice").notify("File Saved!", "info")
    end)
} 
