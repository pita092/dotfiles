return {
	{"nvim-telescope/telescope.nvim"},
	{"nvim-telescope/telescope-ui-select.nvim"},
	tag = "0.1.6",
	lazy = true,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").load_extension("fzy_native")
		require("telescope").setup({
			mappings = {},
      i = {["<C-l>"] = "which_key"},
			extensions = {
				fzy_native = {
					override_generic_sorter = false,
					override_file_sorter = true,
				},
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
				extensions = {
					fzf = {
						fuzzy = true,
						override_generic_sorter = true,
						override_file_sorter = true,
						case_mode = "smart_case",
					},
				},
			},
		})
		require("telescope").load_extension("fzy_native")
		require("telescope").load_extension("ui-select")
		require('telescope').load_extension('fzf')
	end,
}
