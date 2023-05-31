local function config()
    require("lsp.rust")
    require("lsp.lua")
    require("lsp.solidity")
end

return function(use)
    use({
        "neovim/nvim-lspconfig",
        config = config
    })
end
