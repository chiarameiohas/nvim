return {
  "goolord/alpha-nvim",
  dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope.nvim",
   	     	"nvim-lua/popup.nvim",
		"nvim-lua/plenary.nvim",
  },

  config = function()

	function OpenCommandLineFile()
	    -- Check if there are command line arguments
	    if #vim.fn.argv() > 0 then
		-- Get the first argument (assuming it's the file name)
		local filename = vim.fn.argv()[1]

		-- Open the file
		vim.api.nvim_command('edit ' .. filename)
		-- You can customize this part based on your dashboard plugin
		-- For example, if you are using a plugin like vim-startify or vim-dashboard:
		-- vim.cmd('Dashboard')
	    end
	end
    local alpha = require("alpha")
    local startify  = require("alpha.themes.startify")

    startify.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

            -- Set menu
        startify.section.top_buttons.val = {
            startify.button("n", " > New File", "<cmd>ene<CR>"),
            startify.button("SPC ee", " > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
            startify.button("SPC pff", " > Find File", "<cmd>Telescope find_files<CR>"),
            startify.button("SPC pfw", " > Find Word", "<cmd>Telescope live_grep<CR>"),
            startify.button("SPC wr", " > Restore Session For Current File", "<cmd>lua OpenCommandLineFile(vim.fn.argv()[1])<CR>"),
        }

        -- Set up recently opened files section in the footer
        startify.section.footer.m = {
            description = {"  Recently Opened Files"},
            command = "Telescope oldfiles",
        }

        alpha.setup(startify.opts)

        -- Open dashboard when Neovim starts
        vim.cmd("autocmd VimEnter * Alpha")
  end,
}
