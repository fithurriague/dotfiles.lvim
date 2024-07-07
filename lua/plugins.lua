lvim.plugins = {
	-- JAVA
	-- ====================
	{
		"mfussenegger/nvim-jdtls",
		lazy = true,
	},

	-- GOLANG
	-- ====================
	{
		"olexsmir/gopher.nvim",
		lazy = true,
	},
	{
		"leoluz/nvim-dap-go",
		lazy = true,
	},

	-- FLUTTER
	-- ====================
	{
		"akinsho/flutter-tools.nvim",
		lazy = true,
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
	{
		"simrat39/rust-tools.nvim",
		lazy = true,
	},
	{
		"saecki/crates.nvim",
		lazy = true,
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
		lazy = true,
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
		lazy = true,
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
	{
		"jwalton512/vim-blade",
		event = "User FileOpened",
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = true,
	},

	-- OTHERS
	-- ====================
	{
		"mistricky/codesnap.nvim",
		build = "make",
		lazy = true,
		cmd = { "CodeSnap", "CodeSnapSave" },
	},
	{
		"tris203/precognition.nvim",
		lazy = true,
		config = {
			startVisible = false,
		},
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
		event = "User FileOpened",
	},
	{
		"tpope/vim-abolish",
		event = "VeryLazy",
	},
	{
		"stevearc/oil.nvim",
		opts = {
			keymaps = {
				["gd"] = {
					desc = "Toggle file detail view",
					callback = function()
						detail = not detail
						if detail then
							require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
						else
							require("oil").set_columns({ "icon" })
						end
					end,
				},
			},
		},
		event = "VimEnter",
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
			-- local palette = require("catppuccin.palettes").get_palette("macchiato")
			local palette = require("kanagawa.colors").setup().palette

			require("tiny-devicons-auto-colors").setup({
				colors = palette,
			})
		end,
	},
	{
		"danymat/neogen",
		lazy = true,
		cmd = "Neogen",
		config = true,
		-- Uncomment next line if you want to follow only stable versions
		-- version = "*"
	},
	{
		"folke/trouble.nvim",
		lazy = true,
		cmd = "Trouble",
		opts = {
			keys = {
				i = "prev",
			},
		},
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
		lazy = true,
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
		"mistweaverco/kulala.nvim",
		lazy = true,
		config = function()
			-- Setup is required, even if you don't pass any options
			require("kulala").setup({
				-- default_view, body or headers
				default_view = "body",
				-- dev, test, prod, can be anything
				-- see: https://learn.microsoft.com/en-us/aspnet/core/test/http-files?view=aspnetcore-8.0#environment-files
				default_env = "dev",
				-- enable/disable debug mode
				debug = false,
			})
		end,
	},
	-- {
	-- 	"rachartier/tiny-inline-diagnostic.nvim",
	-- 	event = "VeryLazy",
	-- 	config = function()
	-- 		vim.opt.updatetime = 100
	-- 		require("tiny-inline-diagnostic").setup()
	-- 	end,
	-- },
	{
		url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		event = "User FileOpened",
		config = function()
			require("lsp_lines").setup()
		end,
	},
}
