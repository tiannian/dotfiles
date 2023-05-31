function config()
    require("bufferline").setup()

    local set = vim.keymap.set

    set("n", "<TAB>", ":BufferLineCycleNext<CR>", opt)
    set("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", opt)
end

function init(use)
    use ({
        'akinsho/bufferline.nvim',
        requires = 'nvim-tree/nvim-web-devicons',
        config = config
    })
end

return init
