require('mini.ai').setup {}

require('mini.align').setup {}

require('mini.comment').setup {
    mappings = {
        -- Toggle comment (like `gcip` - comment inner paragraph) for both
        -- Normal and Visual modes
        comment = '<leader>/',

        -- Toggle comment on current line
        comment_line = '<leader>/',

        -- Define 'comment' textobject (like `dgc` - delete whole comment block)
        textobject = '<leader>?',
    },
}

require('mini.cursorword').setup()

require('mini.pairs').setup()

require('mini.surround').setup()

