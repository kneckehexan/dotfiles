return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	keys = function()
		return {

			{ "<leader>ff", "<CMD>Telescope find_files<CR>", desc = "Fuzzy find files in CWD" },
			{ "<leader>fr", "<CMD>Telescope oldfiles<CR>", desc = "Fuzzy find recent files" },
			{ "<leader>fs", "<CMD>Telescope live_grep<CR>", desc = "Find string in CWD" },
			{ "<leader>fc", "<CMD>Telescope grep_string<CR>", desc = "Find string under cursor in CWD" },
			{ "<leader>CS", "<CMD>Telescope colorscheme<CR>", desc = "Pick a colorscheme" },
		}
	end,
	opts = {
		defaults = {
			mappings = {
				i = {
					["<C-k>"] = "move_selection_previous", -- move to prev result
					["<C-j>"] = "move_selection_next", -- move to next result
					--["<C-q>"] = "send_selected_to_qflist + open_qflist", -- move to next result
					["<C-u>"] = "preview_scrolling_up", -- scroll the preview-window up
					["<C-d>"] = "preview_scrolling_down", -- scroll the preview-window down
				},
			},
		},
	},
	-- config = function()
	-- 	local telescope = require("telescope")
	-- 	local actions = require("telescope.actions")
	-- 	local set = require("telescope.actions.set")
	-- 	local builtin = require("telescope.builtin")

	-- 	telescope.setup({
	-- 		defaults = {
	-- 			mappings = {
	-- 			},
	-- 		},
	-- 		pickers = {
	-- 			colorscheme = {
	-- 				enable_preview = true,
	-- 			},
	-- 		},
	-- 	})

	-- 	telescope.load_extension("fzf")

	-- 	--set keymaps
	-- 	local keymap = vim.keymap -- for conciseness

	-- 	keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Fuzzy find files in CWD" })
	-- 	keymap.set("n", "<leader>fr", "<CMD>Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })
	-- 	keymap.set("n", "<leader>fs", "<CMD>Telescope live_grep<CR>", { desc = "Find string in CWD" })
	-- 	keymap.set("n", "<leader>fc", "<CMD>Telescope grep_string<CR>", { desc = "Find string under cursor in CWD" })
	-- 	keymap.set("n", "<leader>cs", "<CMD>Telescope colorscheme<CR>", { desc = "Pick a colorscheme" })
	-- end,
}
