return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	run = "make install_jsregexp",
	event = "insertEnter",
	keys = {
		{
			"<tab>",
			function()
				return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
			end,
			expr = true,
			silent = true,
			mode = "i",
		},
		{
			"<tab>",
			function()
				require("luasnip").jump(1)
			end,
			mode = "s",
		},
		{
			"<s-tab>",
			function()
				require("luasnip").jump(-1)
			end,
			mode = { "i", "s" },
		},
	},
	setup = {
		store_selection_keys = "<Tab>",
	},
}
