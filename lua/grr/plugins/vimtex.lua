return {
	"lervag/vimtex",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local g = vim.g

		g.vimtex_view_general_viewer = "sumatraPDF"
		g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
	end,
}
