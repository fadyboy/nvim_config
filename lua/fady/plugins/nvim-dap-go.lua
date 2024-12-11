return {
	"leoluz/nvim-dap-go",
	dependencies = {
		"mfussenegger/nvim-dap",
	},

	config = function()
		require("dap-go").setup({
			dap_configurations = {
				{
					type = "go",
					name = "Debug",
					mode = "remote",
					program = "${file}",
					request = "attach",
				},
			},
			-- delve settings
			delve = {
				path = "dlv",
				initialize_timeout_sec = 20,
				port = 38697,
				args = {
					"--check-go-version=false",
				},
				build_flags = {},
				cwd = nil,
			},
			tests = {
				verbose = false,
			},
		})
	end,
}
