function config()
    local comments = require("todo-comments")
    comments.setup()

    local opt = { noremap = true, silent = true }

    vim.keymap.set("n", "tn", function() comments.jump_next() end, opt)
    vim.keymap.set("n", "tN", function() comments.jump_prev() end, opt)
    vim.keymap.set("n", "<leader>ft", ":TodoTelescope<CR>", opt)
end

return function(use)
    use({
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = config
    })
end
