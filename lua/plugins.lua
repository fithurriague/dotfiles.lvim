lvim.plugins = {
	-- JAVA
	-- ====================
	"mfussenegger/nvim-jdtls",

	-- GOLANG
	-- ====================
	"olexsmir/gopher.nvim",
	"leoluz/nvim-dap-go",
	-- FLUTTER
	-- ====================
	{
		"akinsho/flutter-tools.nvim",
		-- lazy = false,
		dependencies = {
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = function()
			require("flutter-tools").setup({
				debugger = {
					enabled = false,
					run_via_dap = false,
				},
				outline = { auto_open = false },
				decorations = {
					statusline = { device = true, app_version = true },
				},
				widget_guides = { enabled = true, debug = true },
				dev_log = { enabled = true, open_cmd = "10split" },
				lsp = {
					color = {
						enabled = true,
						background = true,
						virtual_text = false,
					},
					settings = {
						showTodos = true,
						renameFilesWithClasses = "prompt",
					},
					on_attach = function(client, bufnr)
						require("lvim.lsp").common_on_attach(client, bufnr)
						local _, _ = pcall(vim.lsp.codelens.refresh)
					end,
					capabilities = require("lvim.lsp").common_capabilities(),
				},
			})
		end,
	},

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
	-- MARKDOWN
	-- ====================
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

	-- KITTY CONF
	-- ====================
	{
		"fladson/vim-kitty",
	},
	{
		"j-hui/fidget.nvim",
		version = "v1.1.0",
		config = function()
			require("fidget").setup()
		end,
	},
	-- COLORSCHEMES
	-- ====================
	"rebelot/kanagawa.nvim",
  -- "sainnhe/gruvbox-material",
	-- "Mofiqul/dracula.nvim",
	"jwalton512/vim-blade",
	{
		"catppuccin/nvim",
		name = "catppuccin",
	},

	-- OTHERS
	-- ====================
	{
    "tris203/precognition.nvim",
    config = {
      startVisible = false,
    }
  },
	"HiPhish/rainbow-delimiters.nvim",
	"tpope/vim-abolish",
	{
		"stevearc/oil.nvim",
		opts = {},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"rachartier/tiny-devicons-auto-colors.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		event = "VeryLazy",
		config = function()
			-- You can add as many colors as you like. More colors is better to estimate the nearest color for each devicon.
			local theme_colors = require("catppuccin.palettes").get_palette("macchiato")

			require("tiny-devicons-auto-colors").setup({
				colors = theme_colors,
			})
		end,
	},
	{
		"folke/trouble.nvim",
		opts = {},
	},
	{
		"folke/todo-comments.nvim",
		event = "BufRead",
		config = function()
			require("todo-comments").setup()
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
