local function config()
	require("Comment").setup({
		padding = true,
		sticky = true,
		toggler = {
			line = "<leader>/",
			block = "gb",
		},
		opleader = {
			line = "<leader>/",
			block = "gb",
		},
	})
end

return function(use)
	use({
		"numToStr/Comment.nvim",
		config = config,
	})
end
