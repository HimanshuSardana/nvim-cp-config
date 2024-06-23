return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		local treesitter = require('nvim-treesitter')
		treesitter.setup()
	end
}
