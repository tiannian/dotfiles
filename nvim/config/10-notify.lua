function config(use)
    use({
        "rcarriga/nvim-notify",
        config = function()
            local notify = require("notify")

            notify.setup({
                top_down = false,
                render = "compact",
                background_color = "#000000"
            })

            vim.notify = notify
        end
    })
end

return config
