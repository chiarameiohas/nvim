return 
{
		{
				"williamboman/mason.nvim",
				config = function()
						require("mason").setup()
				end
		},
		{
			"williamboman/mason-lspconfig.nvim",
			config = function()
				require("mason-lspconfig").setup ({
				ensure_installed = { "lua_ls", "clangd"},
				})	
			end
		},
		{
				"neovim/nvim-lspconfig",
				config = function()
						local capabilities = require('cmp_nvim_lsp').default_capabilities()
						local lspconfig = require('lspconfig')
						lspconfig.lua_ls.setup({
								capabilities = capabilities,
						})
						lspconfig.clangd.setup({
								capabilities = capabilities,
						})

						vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
						vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
						vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
						vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, {})
						vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, {})
						--vim.keymap.set('n', '<space>wl', function()
						--		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
						--		end, opts)
						--vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
						--vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
						--vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
						--vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
						vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
						vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
						vim.keymap.set({ 'n'}, '<leader>ca', vim.lsp.buf.code_action, {})
						vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', {})
				end,
		},
}
