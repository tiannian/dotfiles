function config()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
        sync_install = false,

        auto_install = true,

        highlight = {
            enable = true,
        },

        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<CR>",
                node_incremental = "<CR>",
                node_decremental = "<BS>",
                scope_incremental = "<TAB>",
            },
        },

        indent = {
            enable = true,
        },

        context_commentstring = {
            enable = true,
        },

        rainbow = {
            enable = true,
            -- list of languages you want to disable the plugin for
            disable = { 'jsx', 'cpp' },
            -- Which query to use for finding delimiters
            query = 'rainbow-parens',
            -- Highlight the entire buffer all at once
            -- strategy = require('ts-rainbow').strategy.global,
        }
    })
end

return function(use)
    use({
        "nvim-treesitter/nvim-treesitter",
        requires = {
            { "JoosepAlviste/nvim-ts-context-commentstring" },
            { "nvim-treesitter/nvim-treesitter-textobjects" },
            { "HiPhish/nvim-ts-rainbow2" },
        },
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
        config = config
    })
end
