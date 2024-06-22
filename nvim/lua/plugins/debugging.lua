return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"NicholasMata/nvim-dap-cs",
		"nvim-neotest/nvim-nio",
	},
   lazy = true,
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		require("dap-cs").setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

			end,
}
