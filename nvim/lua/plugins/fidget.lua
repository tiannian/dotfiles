function config()
	require("fidget").setup()
end

return function(use)
	use({
		"j-hui/fidget.nvim",
		tag = "legacy",
		config = config,
	})
end
