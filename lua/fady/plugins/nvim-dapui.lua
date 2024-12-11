return {
	"rcarriga/nvim-dap-ui",
	event = "VeryLazy",
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
		"theHamsta/nvim-dap-virtual-text",
		"nvim-telescope/telescope-dap.nvim",
	},

	config = function()
		local dap = require("dap")
		require("dapui").setup()

		dap.listeners.after.event_initialized["dapui_config"] = function()
			require("dapui").open()
		end

		dap.listeners.before.event_terminated["dapui_config"] = function()
			-- leave blank so window doesn't close
		end

		dap.listeners.before.event_exited["dapui_config"] = function()
			-- leave blank so window doesn't close
		end

		-- override default breakpoint icon
		-- vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "", linehl = "", numhl = "" })
	end,
}
