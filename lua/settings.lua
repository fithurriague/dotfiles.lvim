-- GENERAL
-- ====================
vim.opt.shell = "/bin/sh"
vim.opt.number = true
vim.opt.relativenumber = true
lvim.log.level = "warn"
lvim.format_on_save = false
--@usage disable automatic installation of servers
lvim.lsp.installer.setup.automatic_installation = false
vim.diagnostic.config({ virtual_text = false })
lvim.colorscheme = "kanagawa"
vim.g.catppuccin_flavour = "macchiato"

-- vim.opt_local.shiftwidth = 2
-- vim.opt_local.tabstop = 2
-- vim.opt_local.cmdheight = 2 -- more space in the neovim command line for displaying messages

-- BUILTIN PLUGINS
-- ====================
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
-- lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = true
lvim.builtin.dap.terminal = false
-- lvim.builtin.breadcrumbs.active = true

-- NVIMTREE
-- ====================
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
-- lvim.builtin.treesitter.indent.enable = true

-- LSP
-- ====================

lvim.lsp.templates_dir = join_paths(get_runtime_dir(), "after", "ftplugin")

-- make sure server will always be installed even if the server is in skipped_servers list
lvim.lsp.installer.setup.ensure_installed = {
	"lua_ls",
	"jsonls",
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls", "gopls", "rust_analyzer" })

-- vim.tbl_map(function(server)
--   return server ~= "jdtls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- change UI setting of `LspInstallInfo`
-- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--   install_server = "I",
--   uninstall_server = "d",
--   toggle_server_expand = "o",
-- }
