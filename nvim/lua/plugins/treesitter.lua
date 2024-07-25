return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.install").prefer_git = false
			require("nvim-treesitter.install").compilers = { "gcc" }
			local parser_install_dir = vim.fn.stdpath("data") .. "/lazy/nvim-treesitter/parser"
			vim.opt.runtimepath:append(parser_install_dir)
			require("nvim-treesitter.configs").setup({
				parser_install_dir = parser_install_dir,
				ensure_installed = { "lua", "vim", "vimdoc", "c", "cpp" },
				sync_install = true, -- Set this to true to force synchronous installation
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
