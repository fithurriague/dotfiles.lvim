local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{
		command = "luacheck",
		args = { "--allow_defined_top" },
	},
	{
		command = "shellcheck",
		args = { "--severity", "warning" },
	},
	{
		command = "codespell",
		filetypes = { "javascript", "python" },
	},
})
