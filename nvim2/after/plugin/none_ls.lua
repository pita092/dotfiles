vim.keymap.set("n", "<C-h>", vim.lsp.buf.format, {})

local null_ls = require("null-ls")

null_ls.setup({

	null_ls.builtins.formatting.stylua,

})
