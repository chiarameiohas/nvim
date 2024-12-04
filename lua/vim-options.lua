return {
	config = function() 
	--vim.cmd("set expandtab")
	vim.cmd("set backspace=indent,eol,start")
	vim.cmd("set colorcolumn=80")
	vim.cmd("set mouse=a")
	vim.cmd("set noswapfile")
	vim.cmd("set clipboard+=unnamed")

	vim.cmd("set tags+=tags")
	vim.cmd("set tags+=.tags")
	vim.cmd("set tags+=../tags")
	vim.cmd("set number")
	vim.api.nvim_set_keymap('n', '<C-Right>', 'w', {noremap = true, silent = true})
	vim.api.nvim_set_keymap('n', '<C-Left>', 'b', {noremap = true, silent = true})
	--vim.cmd("set shiftwidth=4")
	--vim.cmd("set softtabstop=4")
	vim.cmd("set mouse=a")
	--vim.api.nvim_set_keymap('x', '<leader>y', '"+y', { noremap = true, silent = true })
	vim.g.mapleader = " "
end
}

