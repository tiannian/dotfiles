function mason_config()
    require("mason").setup({
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        },
    })
end

function mason_lsp_config()
    require("mason-lspconfig").setup()
end

return function(use)
    use({
        "williamboman/mason.nvim",
        config = mason_config
    })
    use({
        "williamboman/mason-lspconfig.nvim",
        config = mason_lsp_config
    })
end
