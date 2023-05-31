function config()
    require('mini.pairs').setup({})
end

return function(use)
    use({
        "echasnovski/mini.nvim",
        config = config
    })
end
