-- GENERAL
-- ====================
vim.opt.shell = "/bin/sh"
vim.opt.number = true
vim.opt.relativenumber = true
vim.diagnostic.config({ virtual_text = false })

vim.filetype.add({
	extension = {
		["http"] = "http",
	},
})

lvim.log.level = "warn"
lvim.format_on_save = false
lvim.lsp.installer.setup.automatic_installation = false
lvim.colorscheme = "kanagawa"

-- BUILTIN PLUGINS
-- ====================
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = true
lvim.builtin.dap.terminal = false

-- NVIMTREE
-- ====================
lvim.builtin.nvimtree.active = false
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- TREESITTER
-- ====================
lvim.builtin.treesitter.ensure_installed = {
	"json",
	"lua",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.treesitter.rainbow.extended_mode = true
lvim.builtin.treesitter.highlight.enabled = true

-- LSP
-- ====================
lvim.lsp.templates_dir = join_paths(get_runtime_dir(), "after", "ftplugin")
lvim.lsp.installer.setup.ensure_installed = {
	"lua_ls",
	"jsonls",
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls", "gopls", "rust_analyzer" })
