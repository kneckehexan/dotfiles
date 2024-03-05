local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
	s(
		{ trig = "meet", descr = "Template for meetings" },
		fmt(
			[[
      # Möte <>

      Tid & plats: <> - <>, <>
      Närvarande: <>

      ## Anteckningar

      <>
      ]],
			{ i(1, "mötesnamn"), i(2, "start"), i(3, "slut"), i(4, "plats"), i(5, "namnlista"), i(6, "anteckningar") },
			{ delimiters = "<>" }
		)
	),
}
