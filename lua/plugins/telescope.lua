return {
		{
				'nvim-telescope/telescope.nvim', tag = '0.1.5',
				dependencies = { 
						{'nvim-lua/plenary.nvim' },
						{
								"nvim-telescope/telescope-live-grep-args.nvim" ,
								version = "^1.0.0",
						},
				},
				config = function()	
				local builtin = require("telescope.builtin")
				require("telescope").load_extension("live_grep_args")
				vim.keymap.set('n', '<C-o>', builtin.find_files, {})
				vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
				vim.keymap.set('n', '<leader>of', builtin.oldfiles,{})
				--vim.keymap.set('n', '<leader>fg', builtin.live_grep,{})p
				vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
				vim.api.nvim_set_keymap('n', '<leader>r', '<cmd>Telescope lsp_references<CR>', { noremap = true, silent = true })
				end
		},
		{
				'nvim-telescope/telescope-ui-select.nvim',
				config = function()
						require("telescope").setup {
								pickers = {
										live_grep = { theme="ivy" },
										grep_string = { theme="ivy" },
								},
								extensions = {
										["ui-select"] = {
												require("telescope.themes").get_dropdown{}
										}
								},
						}
				require("telescope").load_extension("ui-select")
				end
		},
}
