return {
	{
		"akinsho/bufferline.nvim",
		lazy = false,
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			local status, bufferline = pcall(require, "bufferline")
			if not status then
				print("ERROR bufferline")
				return
			end

			local highlights = require("nord").bufferline.highlights({
				italic = true,
				bold = true,
			})
			bufferline.setup({
				options = {
					offsets = {
						{
							filetype = "neo-tree",
							text = "Neo-tree",
							highlight = "Directory",
							text_align = "left",
						},
					},
					indicator_icon = "▎",
					modified_icon = "●",
					buffer_close_icon = "",
					close_icon = "",
					left_trunc_marker = "",
					right_trunc_marker = "",
					numbers = "ordinal",
					max_name_length = 15,
					max_prefix_length = 6,
					diagnostics = "nvim_lsp",
					show_buffer_icons = true,
					show_buffer_close_icons = false,
					show_close_icon = false,
					persist_buffer_sort = true,
					enforce_regular_tabs = true,
					separator_style = "thin",
					highlights = highlights,
					diagnostics_indicator = function(count, level)
						local icon = level:match("error") and " " or " "
						return icon .. count
					end,
				},
			})
		end,
	},
}
