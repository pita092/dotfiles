vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n" }, "<leader>z", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>w", vim.lsp.buf.rename, {})


local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup {}
