return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		opts = ...,
	},
}
