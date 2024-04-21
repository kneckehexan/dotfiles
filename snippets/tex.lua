local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
	s(
		{ trig = "letter", descr = "Template for letters" },
		fmt(
			[[
      %chktex-file 8
      \documentclass[12pt, a4paper]{letter}
      \usepackage[T1]{fontenc}
      \usepackage[utf8]{inputenc}
      \usepackage[swedish]{babel}
      \usepackage{fancyhdr}
      \usepackage{lastpage}

      \fancyhead{}
      \fancyfoot{}
      \cfoot{\thepage{}~(\pageref{LastPage})}
      \renewcommand{\headrulewidth}{0pt}
      \renewcommand{\footrulewidth}{0pt}
      \pagestyle{fancy}
      \signature{Philip Tunbjer}
      \address{<>}
      \begin{document}

      \begin{letter}{<> \\ <>}
        \opening{<>}
        \thispagestyle{fancy}
        <>
        \closing{Med vänlig hälsning,}
      \end{letter}

      \end{document}
      ]],
			{
				i(1, "från adress"),
				i(2, "till vem"),
				i(3, "vems adress"),
				i(4, "inledning, öppning"),
				i(5, "innehåll"),
			},
			{ delimiters = "<>" }
		)
	),
}
