return {
	{
		"folke/tokyonight.nvim",
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
	},
	{
		"rebelot/kanagawa.nvim",
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
	},
	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		config = function()
			require("gruvbox").setup({
				transparent_mode = true,
			})
		end,
	},
	--	{ "LazyVim/LazyVim", opts = {
	--		colorscheme = "catppuccin",
	--	} },
}
