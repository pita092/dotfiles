vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.setleader = " "
vim.cmd("set number")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

require("pita.remaps")
require("pita.lazy")

