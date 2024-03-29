lvim.plugins = {
	-- JAVA
	-- ====================
	"mfussenegger/nvim-jdtls",

	-- GOLANG
	-- ====================
	"olexsmir/gopher.nvim",
	"leoluz/nvim-dap-go",

	-- RUST
	-- ====================
	"simrat39/rust-tools.nvim",
	{
		"saecki/crates.nvim",
		version = "v0.3.0",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("crates").setup({
				null_ls = {
					enabled = true,
					name = "crates.nvim",
				},
				popup = {
					border = "rounded",
				},
			})
		end,
	},
	{
		"j-hui/fidget.nvim",
    version = "legacy",
		config = function()
			require("fidget").setup()
		end,
	},
	-- OTHERS
	-- ====================
	"p00f/nvim-ts-rainbow",
	"jwalton512/vim-blade",
	"tpope/vim-abolish",
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	{
		"sainnhe/gruvbox-material",
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
	},
	{
		"folke/todo-comments.nvim",
		event = "BufRead",
		config = function()
			require("todo-comments").setup()
		end,
	},
	{
		"phaazon/hop.nvim",
		event = "BufRead",
		config = function()
			require("hop").setup()
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
				RGB = true, -- #RGB hex codes
				RRGGBB = true, -- #RRGGBB hex codes
				RRGGBBAA = true, -- #RRGGBBAA hex codes
				rgb_fn = true, -- CSS rgb() and rgba() functions
				hsl_fn = true, -- CSS hsl() and hsla() functions
				css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
				css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
			})
		end,
	},
	{
		url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
	},
}
