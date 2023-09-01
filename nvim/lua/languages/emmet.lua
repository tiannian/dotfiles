local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").emmet_ls.setup({
	capabilities = capabilities,
	on_attach = require("utils.lsp-config").on_attach,
	filetypes = {
		"css",
		"html",
		"less",
		"sass",
		"scss",
		"svelte",
		"pug",
		"typescriptreact",
		"vue",
	},
	--[[ 	init_options = {
		html = {
			options = {
				-- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
				["bem.enabled"] = true,
			},
		},
	}, ]]
})
