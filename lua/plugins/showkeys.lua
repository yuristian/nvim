return {
    "nvzone/showkeys",
    event = "VeryLazy",
    cmd = "ShowKeysToggle",
    opts = {
        timeout = 1,
        max_keys = 5,
        position = "bottom-right",
    },
    config = function(_, opts)
        require("showkeys").setup(opts)
    end
}