return {
	{ "nvim-telescope/telescope-ui-select.nvim" },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require('telescope').setup {
				defaults = {
					file_ignore_patterns = {
						"node_modules"
					}
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
						}, }, },
				defaults = {
					layout_strategy = 'vertical',
					layout_config = { height = 0.95 },
				},
			}
		end,
	},
}
