function config()
    local notify = require("notify")

    notify.setup({
        top_down = false,
        render = "compact",
        background_colour = "#000000",
    })

    vim.notify = notify

    vim.keymap.set('n', '<leader>fn', ":Telescope notify<CR>", {})
end

return function(use)
    use({
        "rcarriga/nvim-notify",
    })
end
