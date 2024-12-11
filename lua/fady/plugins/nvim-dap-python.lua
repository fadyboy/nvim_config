return {
	"mfussenegger/nvim-dap-python",
	ft = "python",
	dependencies = {
		"mfussenegger/nvim-dap",
	},

	config = function()
		require("dap-python").setup("/usr/bin/python3")
		table.insert(require("dap").configurations.python, {
			type = "python",
			request = "launch",
			name = "python custom launch configuration",
			program = "${file}",
		})
		require("dap-python").test_runner = "pytest"
	end,
}
