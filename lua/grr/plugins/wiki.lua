local g = vim.g
local env = require("env")

function RemoveWikiExt(s)
	return (string.gsub(s, "%.wiki", ""))
end

return {
	"lervag/wiki.vim",
	lazy = false,
	init = function()
		g.wiki_root = env.WIKI_PATH
		g.wiki_filetypes = { "wiki", "md" }
		vim.keymap.set("n", "<leader>wj", ":WikiJournal<CR>", { silent = true })
		vim.keymap.set("n", "<leader>wi", ":WikiIndex<CR>", { silent = true })
		g.wiki_link_schemes = {
			wslopen = {
				resolver = vim.fn["wiki#url#resolvers#wiki"],
				handler = function(x)
					--vim.fnRemoveWikiExt(vim.inspect(x.path)))
					local f = RemoveWikiExt(vim.inspect(x.path))
					vim.api.nvim_exec2("!wsl-open " .. f, {})
				end,
			},
		}
	end,
}
