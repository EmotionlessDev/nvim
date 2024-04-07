return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    lazy = false,
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            auto_install = true,
            indent = {
                enable = true
            },
            highlight = {
                enable = true
            }
        })
    end
}

