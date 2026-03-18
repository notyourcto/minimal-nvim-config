--load lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

--check if lazy exists
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end

--add lazy to runtime
vim.opt.rtp:prepend(lazypath)

require("notyourcto.options")
require("notyourcto.keymaps")

require("lazy").setup(require("notyourcto.plugins"))

require("notyourcto.lsp")
require("notyourcto.cmp")
