return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.completion.spell,
				null_ls.builtins.formatting.cbfmt,
--				null_ls.builtins.diagnostics.clang_check.with({
--					method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
--				-- Specify the severity levels you want to display
--				severity = {
--					error = false,
--				        warning = false,
--		                	information = false, -- Set to false to disable information level diagnostics
--						hint = false, -- Set to false to disable hint level diagnostics
--				},
--				-- Specify the types of diagnostics you want to display
--				types = {
--					syntax = false, -- Set to false to disable syntax-related diagnostics
--					performance = false, -- Set to false to disable performance-related diagnostics
--					unused_function = false, -- Set to false to disable unused function diagnostics
--					unused_variable = false, -- Set to false to disable unused variable diagnostics
--					unused_parameter = false, -- Set to false to disable unused parameter diagnostics
--					unused_include = false, -- Set to false to disable unused include diagnostics
--				},
--			}),
--				null_ls.builtins.diagnostics.cpplint.with({
--					method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
--				-- Specify the severity levels you want to display
--				severity = {
--					error = false,
--				        warning = false,
--		                	information = false, -- Set to false to disable information level diagnostics
--					hint = false, -- Set to false to disable hint level diagnostics
--				},
--				-- Specify the types of diagnostics you want to display
--				types = {
--					syntax = false, -- Set to false to disable syntax-related diagnostics
--					performance = false, -- Set to false to disable performance-related diagnostics
--					unused_function = false, -- Set to false to disable unused function diagnostics
--					unused_variable = false, -- Set to false to disable unused variable diagnostics
--		               		unused_parameter = false, -- Set to false to disable unused parameter diagnostics
--			                unused_include = false, -- Set to false to disable unused include diagnostics
--				},
--			}),
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		--vim.keymap.set('n', '<leader>dc', '<cmd>lua require"none-ls".diagnostics({ method = "textDocument/publishDiagnostics", filetypes = {"c", "cpp"} })<CR>', { noremap = true, silent = true })
       -- vim.keymap.set('n', '<leader>dco', '<cmd>lua require"null_ls".clear_diagnostics()<CR>', { noremap = true, silent = true })
	end,
}
