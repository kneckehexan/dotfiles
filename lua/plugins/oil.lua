return {
	"stevearc/oil.nvim",
	-- ---@module 'oil'
	-- ---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	config = function()
		require("oil").setup()
		vim.keymap.set("n", "<leader>ee", "<cmd>Oil<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
	end,
}
