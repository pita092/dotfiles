vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup("plugins", { defaults = { lazy = true } })

--vim options
vim.g.setleader = " "
vim.cmd("set number")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- mappings
-- ###########
-- Lazy-vim
vim.keymap.set("n", "<leader>wq", ":Lazy load all<CR>", {})
vim.keymap.set("n", "<leader>w", ":hi WinSeparator guifg=#E5E9F0<CR>", {})
--code runner
vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
--debuging
--lsp-config
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n" }, "<leader>z", vim.lsp.buf.code_action, {})
--neotree
vim.keymap.set("n", "P", "toggle_preview", {})
vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal right<CR>", {})
--none-ls
vim.keymap.set("n", "<C-h>", vim.lsp.buf.format, {})
--telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<C-o>", builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
--undo-tree
vim.keymap.set("n", "<leader><F5>", vim.cmd.UndotreeToggle)

