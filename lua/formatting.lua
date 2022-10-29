local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{
		command = "prettier",
		args = { "--print-width", "100" },
		filetypes = { "typescript", "typescriptreact" },
	},
	{
		command = "stylua",
		filetypes = { "lua" },
	},
	{
		command = "clang-format",
		filetypes = { "java" },
	},
	{ command = "goimports", filetypes = { "go" } },
	{ command = "gofumpt", filetypes = { "go" } },
})
