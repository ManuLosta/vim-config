return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = {
					"lua",
					"javascript",
					"typescript",
					"html",
					"tsx",
					"json",
					"css",
					"elixir",
					"eex",
					"heex",
					"haskell",
				},
				highlight = { enable = true },
				indent = { enable = true },
				autotag = { enabe = true },
			})
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		dependencies = "nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-ts-autotag").setup({
				-- your config
			})
		end,
		lazy = true,
		event = "VeryLazy",
	},
}
