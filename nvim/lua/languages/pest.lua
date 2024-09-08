local M = {}

local function config()
    require('pest-vim').setup {}
end

function M.install(use)
	use({
		"pest-parser/pest.vim",
		config = config,
	})
end

function M.menu()
	return {}
end

return M
