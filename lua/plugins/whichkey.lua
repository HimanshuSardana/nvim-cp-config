return {
  "folke/which-key.nvim",
  event = "VeryLazy",
 config = function()
	  local wk = require('which-key')
	  wk.register({
		  f = {
			t = { "<cmd>Neotree toggle<cr>", "Filetree toggle" },
			}  
	}, { prefix = '<leader>'})
  end
}
