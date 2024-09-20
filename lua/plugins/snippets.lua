local ls = require('luasnip')
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

ls.add_snippets("javascript", {
	s("fn", {
		-- Function signature with cursor position
		t("function "), i(1, "name"), t("("), i(2, "args"), t({ ") {", "\t" }),
		i(0),
		t({ "", "}" })
	})
})

ls.add_snippets("lua", {
	s("req", {
		-- Require statement
		t("local "), i(1, "module_name"), t(" = require('"), i(2, "module_path"), t("')"),
	})
})

ls.add_snippets("tex", {
	s("starter", {
		-- Basic LaTeX document structure with each part on a new line
		t({ "\\documentclass{article}", "" }),
		t({ "\\usepackage[utf8]{inputenc}", "" }),
		t({ "\\usepackage{amsmath, amssymb, amsthm}", "" }),
		t({ "\\usepackage{tikz}", "" }),
		t({ "\\usepackage{graphicx}", "" }),
		t({ "\\usetikzlibrary{arrows, positioning, shapes}", "" }),
		t({ "\\title{" }), i(1, "title"), t("}"),
		t({ "", "\\author{" }), i(2, "author"), t("}"),
		t({ "", "\\date{\\today}", "" }),
		t({ "\\begin{document}", "" }),
		t({ "\\maketitle", "" }),
		t({ "\\pagebreak", "" }),
		t({ "\\tableofcontents", "" }),
		t({ "\\pagebreak", "" }),
		t({ "\\end{document}" })
	}),
	s("sec", {
		-- Section
		t("\\section{"), i(1, "section_title"), t("}"),
	}),
	s("subsec", {
		-- Subsection
		t("\\subsection{"), i(1, "subsection_title"), t("}"),
	}),
	s("subsubsec", {
		-- Subsubsection
		t("\\subsubsection{"), i(1, "subsubsection_title"), t("}"),
	}),
	s("tfig", {
		-- Tikz Figure
		t("\\begin{tikzfigure}"), t({ "" }), i(1, "content"), t({ "" }), t("\\end{tikzfigure}"),
	}),
	s("center", {
		-- Center
		t("\\begin{center}"), t("\\end{center}"),
	})
})

return {}
