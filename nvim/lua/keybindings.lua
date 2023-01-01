-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- leader key 为空
vim.g.mapleader = "."
vim.g.maplocalleader = "."

local opt = {
    noremap = true,
    silent = true,
}

-- Redefine key map
local map = vim.api.nvim_set_keymap

-- Indent code on v
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- Paste without copy in v
map("v", "p", '"_dP', opt)

-- Exit
map("n", "qq", ":q!<CR>", opt)
map("n", "<leader>q", ":qa!<CR>", opt)
map("n", "<leader>w", ":w<CR>", opt)
map("n", "<leader>wq", ":wqa!<CR>", opt)

-- Search
map("n", "/", "/\\v", { noremap = true, silent = false })
map("v", "/", "/\\v", { noremap = true, silent = false })

-- Terminal
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>tv", ":vsp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)

-- ident code
map("n", "<leader>i", "gg=G", opt)

-- telescope here
local builtin = require('telescope.builtin')
vim.keymap.set("n", "ff", builtin.find_files, {})
vim.keymap.set("n", "fg", builtin.live_grep, {})

