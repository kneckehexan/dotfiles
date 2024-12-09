return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = true,
	},
	{
		"folke/tokyonight.nvim",
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
		opts = {
			transparent_mode = true,
		},
		-- config = function()
		-- 	require("gruvbox").setup({
		-- 		transparent_mode = true,
		-- 	})
		-- end,
	},
	-- require("lazy").opts({
	-- 	colorscheme = "catppuccin",
	-- }),
	{ "LazyVim/LazyVim", opts = {
		colorscheme = "catppuccin",
	} },
}
