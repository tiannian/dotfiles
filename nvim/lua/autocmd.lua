local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
	clear = true,
})

local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWritePre", {
	group = myAutoGroup,
	pattern = { "*" },
	callback = function()
		vim.lsp.buf.format()
	end,
})

autocmd("Filetype", {
	group = myAutoGroup,
	pattern = { "javascript", "html", "xml" },
	command = "setlocal shiftwidth=2 tabstop=2",
})
