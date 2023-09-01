local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").solidity.setup({
	capabilities = capabilities,
})
