return {
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		configs = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				sync_install = false,
				highlight = {
					enable = false,
					disable = { "hint", "warning" },
				},
				indent = { enable = true },
			})
		end
}
