function config()
    require("gitsigns").setup()
end

return function(use)
    use({
        'lewis6991/gitsigns.nvim',
        config = config
    })
end
