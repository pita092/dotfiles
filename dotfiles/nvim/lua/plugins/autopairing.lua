return{
  'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
     lazy = true,
    	config = function ()
		require("nvim-autopairs").setup{}
    	end
    }
