return {
	{
		'junnplus/lsp-setup.nvim',
		dependencies = {
			'neovim/nvim-lspconfig',
			'williamboman/mason.nvim', -- optional
			'williamboman/mason-lspconfig.nvim', -- optional
		},
		config = function()
			require('lsp-setup').setup({
				-- on_attach = function(client, bufnr)
				-- 	-- Support custom the on_attach function for global
				-- 	-- Formatting on save as default
				-- 	require('lsp-setup.utils').format_on_save(client)
				-- end,
				-- Global capabilities

				servers = {
					['lua_ls'] = {},
					['clangd'] = {},
					["texlab"] = {},
					['tsserver'] = {},
					["astro-language-server"] = {},
					["gopls"] = {},
					["tailwindcss"] = {},
					['emmet_language_server'] = {},
					["pyright"] = {},
					["svelte"] = {},
					["cssls"] = {},
					["bashls"] = {},
					["markdown_oxide"] = {},
				},
				mappings = {
					gd = 'lua require"telescope.builtin".lsp_definitions()',
					gi = 'lua require"telescope.builtin".lsp_implementations()',
					gr = 'lua require"telescope.builtin".lsp_references()',
				}
			})
		end
	}
}
