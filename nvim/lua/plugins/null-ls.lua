return function(use)
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			local null_ls = require("null-ls")

			local formatting = null_ls.builtins.formatting
			local diagnostics = null_ls.builtins.diagnostics
			local code_actions = null_ls.builtins.code_actions

			require("null-ls").setup({
				debug = false,
				sources = {
					formatting.rustfmt,
					formatting.stylua,
					--[[ formatting.codespell, ]]
					formatting.jq,
					formatting.forge_fmt,
					formatting.taplo,
					formatting.prettier,
				},
			})
		end,
	})
end
