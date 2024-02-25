return {
  {
    "bluz71/vim-nightfly-guicolors",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme nightfly]])
    end
  }
	--{ "rose-pine/neovim", name = "rose-pine", lazy = false },
	--{
	--	"LazyVim/LazyVim",
	--	opts = {
	--		colorscheme = "rose-pine",
	--		transparent = true,
	--		styles = {
	--			sidebars = "transparent",
	--			floats = "transparent"
	--		}
	--	}
	--}
}
