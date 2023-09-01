local M = {}

local function config()
	local capabilities = require("cmp_nvim_lsp").default_capabilities()

	require("rust-tools").setup({
		server = {
			capabilities = capabilities,
			settings = {
				-- to enable rust-analyzer settings visit:
				-- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
				["rust-analyzer"] = {
					-- enable clippy on save
					checkOnSave = {
						command = "clippy",
					},
				},
			},
			on_attach = require("utils.lsp-config").on_attach,
		},
	})
end

function M.install(use)
	use({
		"simrat39/rust-tools.nvim",
		config = config,
	})
end

function M.menu()
	return {}
end

return M
