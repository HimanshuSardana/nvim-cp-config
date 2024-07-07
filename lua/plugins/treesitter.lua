return {
	"nvim-treesitter/nvim-treesitter",
	config = function() 
		require('nvim-treesitter').setup({
			ensure_installed = { "html", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "json", "javascript", "cpp", "python" },
			auto_install = true,
			highlight = { enable = true }
		})
	end
}
