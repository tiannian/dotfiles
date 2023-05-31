function config()
    require('lualine').setup({
        options = {
            theme = 'nord'
        }
    })
end

function init(use)
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = config
    })
end

return init
