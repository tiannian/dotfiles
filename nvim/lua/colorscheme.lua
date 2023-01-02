vim.o.background = "dark" -- or "light" for light mode

require("gruvbox").setup{
    italic = false,
    transparent_mode = true,
}

vim.cmd([[colorscheme gruvbox]])
