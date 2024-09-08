return function(use)
    use ({ 
        "shaunsingh/nord.nvim",
        config = function()
            vim.g.nord_disable_background = true
            vim.g.nord_italic = false

            require("nord").set()

            vim.cmd([[colorscheme nord]])
        end
    })
end
