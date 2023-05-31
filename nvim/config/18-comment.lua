function config()
    require('Comment').setup({
        padding = true,
        sticky = true,
        toggler = {
            line = "<leader>/",
            block = "<leader>/",
        },
        opleader = {
            line = "<leader>/",
            block = "<leader>/",
        }
    })
end

return function(use)
    use({
        'numToStr/Comment.nvim',
        config = config
    })
end
