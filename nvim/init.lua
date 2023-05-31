local lfsok, lfs = pcall(require, "lfs")
if not lfsok then
    vim.notify("Please install lua-filesystem first")
end

local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
    vim.notify("Installing Packer.nvim")
    paccker_bootstrap = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })

    -- https://github.com/wbthomason/packer.nvim/issues/750
    local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
    if not string.find(vim.o.runtimepath, rtp_addition) then
        vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
    end
    vim.notify("Pakcer.nvim install complete")
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("No packer.nvim")
    return
end

local dir = fn.stdpath("config") .. "/config"

packer.startup({
    function(use) 
        use("wbthomason/packer.nvim")

        require("basic")(use)
        require("colorscheme")(use)
        require("keymapping")(use)
        require("plugins.mini")(use)
        require("plugins.notify")(use)
        require("plugins.nvim-tree")(use)
        require("plugins.bufferline")(use)
        require("plugins.lualine")(use)
        require("plugins.telescope")(use)
        require("plugins.treesitter")(use)
        require("plugins.indent-blankline")(use)
        require("plugins.comment")(use)
        require("plugins.fidget")(use)
        require("plugins.todo-comments")(use)
        require("plugins.gitsigns")(use)
        require("plugins.mason")(use)
        require("completion")(use)
        require("lsp.lsp")(use)
    end
})


