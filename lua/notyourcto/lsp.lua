local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("mason").setup()


require ("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"pyright",
		"clangd",
		"ts_ls",
		"bashls",
		"jsonls",
	},
})

vim.lsp.config("lua_ls", { capabilities = capabilities})
vim.lsp.config("pyright", { capabilities = capabilities})
vim.lsp.config("clangd", { capabilities = capabilities})
vim.lsp.config("ts_ls", { capabilities = capabilities})
vim.lsp.config("bashls", { capabilities = capabilities})
vim.lsp.config("json_ls", { capabilities = capabilities})

vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("clangd")
vim.lsp.enable("ts_ls")
vim.lsp.enable("bashls")
vim.lsp.enable("jsonls")
