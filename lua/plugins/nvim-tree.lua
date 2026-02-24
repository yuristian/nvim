return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("nvim-tree").setup({
            -- Tambahkan opsi nvim-tree di sini jika perlu
            hijack_cursor = true,
            sync_root_with_cwd = true,
            view = {
                adaptive_size = true,
                --width = 30,
            },
        })
        vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true, desc = "Toggle Explorer" })
    end
}