function config()
    require("nvim-tree").setup({
        disable_netrw = true,
        git = {
            enable = true,
        },
        view = {
            width = 32,
            side = "right",
        },
    })

    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
end

return function(use)
    use({
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons"
        },
        config = config,
    })
end
