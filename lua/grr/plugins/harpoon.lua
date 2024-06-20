return {
	"ThePrimeagen/harpoon",
	lazy = false,
	branch = "harpoon2",
	init = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end)
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)
	end,
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
	},
}
