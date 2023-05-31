function config()
    local telescope = require("telescope")
    telescope.setup({
        extensions = {
            ["ui-select"] = {
                require("telescope.themes").get_dropdown({
                    -- even more opts
                    initial_mode = "normal",
                }),
            },
        }
    })
    telescope.load_extension("ui-select")

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
end

function init(use)
    use({
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-ui-select.nvim'}
        },
        config = config
    })
end

return init
