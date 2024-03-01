local g = vim.g
local env = require("env")

return {
	"lervag/wiki.vim",
	lazy = false,
	init = function(_, opts)
		g.wiki_root = env.WIKI_PATH
		g.wiki_filetypes = { "wiki" }
		vim.keymap.set("n", "<leader>wj", ":WikiJournal<CR>", { silent = true })
		vim.keymap.set("n", "<leader>wi", ":WikiIndex<CR>", { silent = true })
	end,
}
