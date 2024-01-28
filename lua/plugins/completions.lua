return {
		{
				"hrsh7th/cmp-nvim-lsp",
		},
		{
				'L3MON4D3/LuaSnip',
				dependencies = {
						'saadparwaiz1/cmp_luasnip',
						 "rafamadriz/friendly-snippets"
				},
		},
		{
				'onsails/lspkind.nvim',
				config = function()
						local lspkind = require('lspkind')
						local cmp = require'cmp'
						cmp.setup {
						formatting = {
								format = lspkind.cmp_format({
								mode = 'symbol', -- show only symbol annotations
								maxwidth = 100, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
											 -- can also be a function to dynamically calculate max width such as 
											 -- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
								ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
								show_labelDetails = true, -- show labelDetails in menu. Disabled by default
								})
						},
				}
				end
		},
		{
				'hrsh7th/nvim-cmp',
				config = function()

				require("luasnip.loaders.from_vscode").lazy_load()
				-- Set up nvim-cmp.
				local cmp = require'cmp'
				cmp.setup({
				snippet = {
					  -- REQUIRED - you must specify a snippet engine
						expand = function(args)
						require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
					  end,
					},
					window = {
					  completion = cmp.config.window.bordered(),
					  documentation = cmp.config.window.bordered(),
					},
					mapping = cmp.mapping.preset.insert({
					  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
					  ['<C-f>'] = cmp.mapping.scroll_docs(4),
					  ['<C-Space>'] = cmp.mapping.complete(),
					  ['<C-e>'] = cmp.mapping.abort(),
					  ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
					}),
					sources = cmp.config.sources({
					  { name = 'nvim_lsp' },
					  { name = 'luasnip' },
					}, {
					  { name = 'buffer' },
					})
				  })
				end
		},
}
