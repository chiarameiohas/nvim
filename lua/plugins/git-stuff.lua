return
{
	{
		"tpope/vim-fugitive",
	},
	{
		"f-person/git-blame.nvim",
		opts = {},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require('gitblame').setup {
			     --Note how the `gitblame_` prefix is omitted in `setup`
			    enabled = false,
			}
			vim.keymap.set("n", "<leader>tl", "<cmd>GitBlameToggle<CR>")
			vim.keymap.set("n", "<leader>sg", "<cmd>GitBlameCopySHA<CR>")
			--[[vim.keymap.set(
			      "n",
			      "<leader>gO",
			      "<cmd>GitBlameOpenCommitURL<cr>",
			      { desc = "GitBlame | Open Commit URL", silent = true }
			    )
			vim.api.nvim_set_keymap(
			      "n",
			      "<leader>gc",
			      "<cmd>GitBlameCopyCommitURL<cr>",
			      { desc = "GitBlame | Copy Commit URL", silent = true }
			    )
			vim.api.nvim_set_keymap(
			      "n",
			      "<leader>gf",
			      "<cmd>GitBlameOpenFileURL<cr>",
			      { desc = "GitBlame | Open File URL", silent = true }
			    )
			vim.api.nvim_set_keymap(
			      "n",
			      "<leader>gC",
			      "<cmd>GitBlameCopyFileURL<cr>",
			      { desc = "GitBlame | Copy File URL", silent = true }
			    )
			vim.api.nvim_set_keymap(
			      "n",
			      "<leader>gs",
			      "<cmd>GitBlameCopySHA<cr>",
			      { desc = "GitBlame | Copy SHA", silent = true }
			    )--]]
		end,
	}
}
