function config()
	local cmp = require("cmp")
	local lspkind = require("lspkind")
	local luasnip = require("luasnip")

	local mapping = {
		["<CR>"] = cmp.mapping.confirm({
			select = true,
			behavior = cmp.ConfirmBehavior.Replace,
		}),
		["<TAB>"] = cmp.mapping.select_next_item(),
		["<S-TAB>"] = cmp.mapping.select_prev_item(),
	}

	cmp.setup({
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},
		mapping = mapping,
		window = {
			--[[ completion = cmp.config.window.bordered(), ]]
			-- documentation = cmp.config.window.bordered(),
		},
		sources = cmp.config.sources({
			{
				name = "luasnip",
				group_index = 1,
			},
			{
				name = "nvim_lsp",
				group_index = 1,
			},
			{
				name = "nvim_lsp_signature_help",
				group_index = 1,
			},
			{
				name = "buffer",
				group_index = 2,
			},
			{
				name = "path",
				group_index = 2,
			},
		}),
		formatting = {
			format = lspkind.cmp_format({
				mode = "symbol", -- show only symbol annotations
				maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
				ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

				-- The function below will be called before any actual modifications from lspkind
				-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
				before = function(entry, vim_item)
					return vim_item
				end,
			}),
		},
	})

	-- Use buffer source for `/`.
	cmp.setup.cmdline("/", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = { {
			name = "buffer",
		} },
	})

	-- Use cmdline & path source for ':'.
	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({ {
			name = "path",
		} }, { {
			name = "cmdline",
		} }),
	})
end

return function(use)
	-- Snippet
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	-- Sources
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
	use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
	use("hrsh7th/cmp-path") -- { name = 'path' }
	use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
	use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
	-- Language snippet
	use("rafamadriz/friendly-snippets")
	-- UI
	use("onsails/lspkind-nvim")
	use("tami5/lspsaga.nvim")

	use({
		"hrsh7th/nvim-cmp",
		config = config,
	})
end
