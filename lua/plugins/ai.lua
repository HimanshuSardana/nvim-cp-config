return {
	{
		"github/copilot.vim",
	},
	{
		"David-Kunz/gen.nvim",
		config = function()
			require('gen').setup({
				model = "tinyllama",
			})

			vim.keymap.set('v', '<leader>]', ':Gen Enhance_Grammar_Spelling<CR>')
			vim.keymap.set('v', '<leader>sh', ':Gen Enhance_Code<CR>')
		end
	},
	-- {
	-- 	"zbirenbaum/copilot.lua",
	-- 	cmd = "Copilot",
	-- 	event = "InsertEnter",
	-- 	config = function()
	-- 		require("copilot").setup({
	-- 			suggestion = {
	-- 				auto_trigger = false
	-- 			}
	-- 		})
	-- 	end,
	-- },
	{
		"HimanshuSardana/groq.nvim"
	}


}
