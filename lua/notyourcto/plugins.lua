return {
	--Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		opts = {
			ensure_installed = {
				"lua",
				"python",
				"c",
				"cpp",
				"json",
				"bash",
				"typescript",
				"javascript",
			},
			highlight = { enable = true },
			indent = { enable = true },
		},
	},

	--Dependency for telescope
	{
		"nvim-lua/plenary.nvim",
	},

	--telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	--which-key pop windows for shortcut
	{
		"folke/which-key.nvim",
		lazy = false,

		config = function()
			local wk = require("which-key")
			--labelling
			wk.register({
				f = { name = "file" },
				t = { name = "terminal" },
				y = { name = "yank" },
				p = { name = "paste" },
				cf = { name = "code formating" },
				a = { name = "end of line" },
				q = { name = "quit" },
				w = { name = "write" },
				e = { name = "explorer" },
			}, { prefix = "<leader>" })
		end,
	},

	--plugins for icons also
	{
		"nvim-tree/nvim-web-devicons",
		lazy = true,
	},

	--lualine
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },

		opts = {
			options = {
				theme = "auto",
				section_separators = "",
				component_separators = "",
			},
		},
	},

	--package manager to install language servers
	{
		"williamboman/mason.nvim",
		opts = {},
	},

	--utility for connecting mason plugin manager to nvims lsp configuration sys.
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {},
	},

	--preconfigured default for builtin client
	{
		"neovim/nvim-lspconfig",
	},

	--autocompletion engine using diff sources like buff, lsp servers,snippets.
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
	},
	-- utility for autopairing syntax
	{
		"windwp/nvim-autopairs",

		event = "InsertEnter",

		config = function()
			local autopairs = require("nvim-autopairs")
			autopairs.setup({})

			local cmp_autopairs = require("nvim-autopairs.completion.cmp")

			local cmp = require("cmp")

			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end,
	},

	--formatting
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				json = { "prettier" },
				bash = { "shmft" },
				c = { "clang-format" },
				cpp = { "clang-format" },
			},

			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		},
	},

	--change tracker between remote repo and repo on machine
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
	},

	--allows to use git command without using terminal
	{
		"tpope/vim-fugitive",
	},

	--cursor smear effect
	{
		"sphamba/smear-cursor.nvim",
		opts = {
			enabled = true,
			stiffness = 1.0,
			trailing_stiffness = 0.2,
			distance_stop_animating = 0.05,
			cursor_color = "#ffffff",
		},
		modes = {
			normal = true,
			insert = true,
			visual = true,
			terminal = true,
			cmdline = true,
		},
	},

	--comment toggle
	{
		"numToStr/Comment.nvim",
		opts = {},
	},

	--undo tree
	{
		"mbbill/undotree",
	},
}
