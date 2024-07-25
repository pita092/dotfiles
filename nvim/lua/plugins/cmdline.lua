return
{

	"VonHeikemen/fine-cmdline.nvim",
	opts = {
			theme = "nord",
			background = "transparent"
		},
	vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})


}
