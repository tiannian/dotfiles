local function config()
    require("lsp.rust")
    require("lsp.lua")
end

return function(use)
    use({
        "neovim/nvim-lspconfig",
        config = config
    })
end
