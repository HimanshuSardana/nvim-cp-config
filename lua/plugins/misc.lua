--	        .__                    .__  .__
--	  _____ |__| ______ ____  ____ |  | |  | _____    ____   ____  ____  __ __  ______
--	 /     \|  |/  ___// ___\/ __ \|  | |  | \__  \  /    \_/ __ \/  _ \|  |  \/  ___/
--	|  Y Y  \  |\___ \\  \__\  ___/|  |_|  |__/ __ \|   |  \  ___(  <_> )  |  /\___ \
--	|__|_|  /__/____  >\___  >___  >____/____(____  /___|  /\___  >____/|____//____  >
--	      \/        \/     \/    \/               \/     \/     \/                 \/

return {
	{
		"OXY2DEV/markview.nvim",
		lazy = false,

		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons"
		},
		config = function()
			local markview = require("markview");
			local presets = require("markview.presets");
			require("markview").setup({
				headings = presets.headings.glow_labels
			})
		end
	},
	{
		'nvim-telescope/telescope-ui-select.nvim'
	},
	{
		-- barbeque (bar at top)
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		opts = {},
	},
	{
		-- highlightedyank.nvim
		"machakann/vim-highlightedyank",
	},
	{
		-- todo-comments.nvim
		"folke/todo-comments.nvim",
		opts = {},
	},
	{
		-- noice.nvim
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup()
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		-- Comment.nvim
		"numToStr/Comment.nvim",
	},

	{
		-- lualine.nvim
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require('lualine').setup()
		end,
	},
	{
		-- alpha.nvim
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	},
	{
		-- flash.nvim
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{
				"S",
				mode = { "n", "x", "o" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash Treesitter",
			},
			{
				"r",
				mode = "o",
				function()
					require("flash").remote()
				end,
				desc = "Remote Flash",
			},
			{
				"R",
				mode = { "o", "x" },
				function()
					require("flash").treesitter_search()
				end,
				desc = "Treesitter Search",
			},
			{
				"<c-s>",
				mode = { "c" },
				function()
					require("flash").toggle()
				end,
				desc = "Toggle Flash Search",
			},
		},
	},
	-- {
	-- 	"m4xshen/hardtime.nvim",
	-- 	config = function()
	-- 		require("hardtime").setup()
	-- 	end,
	-- },
	{
		"kevinhwang91/nvim-ufo",
		config = function()
			vim.o.foldcolumn = '0' -- '0' is not bad
			vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
			vim.o.foldlevelstart = 99
			vim.o.foldenable = true
			vim.keymap.set('n', 'zo', require('ufo').openAllFolds)
			vim.keymap.set('n', 'zc', require('ufo').closeAllFolds)
		end,

	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	},
	{
		"ellisonleao/carbon-now.nvim",
		lazy = true,
		cmd = "CarbonNow",
		---@param opts cn.ConfigSchema
	}

}
