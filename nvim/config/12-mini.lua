function config()
    -- require('mini.comment').setup ({
    --     mappings = {
    --         -- Toggle comment (like `gcip` - comment inner paragraph) for both
    --         -- Normal and Visual modes
    --         comment = '<leader>/',
    --
    --         -- Toggle comment on current line
    --         comment_line = '<leader>/',
    --
    --         -- Define 'comment' textobject (like `dgc` - delete whole comment block)
    --         textobject = '<leader>?',
    --     },
    --     options = {
    --         pad_comment_parts = true
    --     }
    -- })

    require('mini.pairs').setup({})
end

function init(use)
    use({
        "echasnovski/mini.nvim",
        config = config
    })
end

return init
