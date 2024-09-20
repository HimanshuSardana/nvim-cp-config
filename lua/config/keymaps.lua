local keymap = vim.keymap

--	   ____   ____   ____   ________________  |  |
--	  / ___\_/ __ \ /    \_/ __ \_  __ \__  \ |  |
--	 / /_/  >  ___/|   |  \  ___/|  | \// __ \|  |__
--	 \___  / \___  >___|  /\___  >__|  (____  /____/
--	/_____/      \/     \/     \/           \/
keymap.set("n", "<leader>zz", ":wq!<CR>")
keymap.set("n", "<leader>pv", vim.cmd.Ex)
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")


--	  __         .__
--	_/  |_  ____ |  |   ____   ______ ____  ____ ______   ____
--	\   __\/ __ \|  | _/ __ \ /  ___// ___\/  _ \\____ \_/ __ \
--	 |  | \  ___/|  |_\  ___/ \___ \\  \__(  <_> )  |_> >  ___/
--	 |__|  \___  >____/\___  >____  >\___  >____/|   __/ \___  >
--	           \/          \/     \/     \/      |__|        \/
local telescope = require("plugins.telescope")
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>lg", builtin.live_grep, {})
keymap.set("n", "<leader><space>", builtin.buffers, {})
keymap.set("n", "<leader>cs", builtin.colorscheme, {})

keymap.set("n", "<leader>ft", ":NvimTreeToggle<CR>")

--   ____ ______
-- _/ ___\\____ \
-- \  \___|  |_> >
--  \___  >   __/
--      \/|__|
require("config.cp")
keymap.set("n", "<leader>rc", ":RunCode<CR>")

keymap.set("n", "<leader>dm", function() require("noice").cmd("dismiss") end)

--                    .__              __  .__
--   ____ _____ ___  _|__| _________ _/  |_|__| ____   ____
--  /    \\__  \\  \/ /  |/ ___\__  \\   __\  |/  _ \ /    \
-- |   |  \/ __ \\   /|  / /_/  > __ \|  | |  (  <_> )   |  \
-- |___|  (____  /\_/ |__\___  (____  /__| |__|\____/|___|  /
--      \/     \/       /_____/     \/                    \/

-- keymap.set('n', '<c-k>', ':wincmd k <CR>')
-- keymap.set('n', '<c-j>', ':wincmd j <CR>')
-- keymap.set('n', '<c-l>', ':wincmd l <CR>')
-- keymap.set('n', '<c-h>', ':wincmd h <CR>')

keymap.set('n', '<S-i>', ':MoltenEvaluateLine<CR>')
keymap.set('v', '<S-i>', ':<C-u>MoltenEvaluateVisual<CR>gv')
