return {
	lazy = false,
	{
		"williamboman/mason.nvim",
		opts = {}
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = { ensure_installed = { "lua_ls", "clangd", "pyright" } },
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

		lspconfig.pyright.setup({
				capabilities = capabilities,
			})

			lspconfig.clangd.setup({
				capabilities = capabilities,
			})

			lspconfig.jsonls.setup({
			  capabilities = capabilities,
			})

		end,
	},
	{
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
	},
}
