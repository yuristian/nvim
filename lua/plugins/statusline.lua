return {
    "nvim-mini/mini.statusline",
    event = "VeryLazy",
    version = false,
    init = function()
        local statusline = require "mini.statusline"
        statusline.setup()

        statusline.section_location = function()
            return '%2l:%-2v'
        end
    end
}