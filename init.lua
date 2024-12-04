------------------------------------------------------------
----------------- Vim settings -----------------------------
------------------------------------------------------------

vim.g.mapleader = " "
vim.cmd("set backspace=indent,eol,start")
vim.cmd("set colorcolumn=80")
vim.cmd("set mouse=a")
vim.cmd("set noswapfile")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set tags+=tags")
vim.cmd("set tags+=.tags")
vim.cmd("set tags+=../tags")
vim.cmd("set number")

------------------------------------------------------------

vim.filetype.add({ extension = { c = "c" } })
vim.filetype.add({ extension = { h = "c" } })
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
require("lazy").setup("plugins")



