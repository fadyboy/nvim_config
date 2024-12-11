vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- split windows equally
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) --close split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- debugging
keymap.set("n", "<leader>drr", "<cmd>lua require'dap'.run_to_cursor()<CR>", { desc = "Run to cursor" })
keymap.set(
	"n",
	"<leader>dee",
	"<cmd>lua require'dapui'.eval(vim.fn.input '[Expression] > ')<CR>",
	{ desc = "Evaluate Input" }
)
keymap.set(
	"n",
	"<leader>dcc",
	"<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<CR>",
	{ desc = "Conditional Breakpoint" }
)
keymap.set("n", "<leader>duu", "<cmd>lua require'dapui'.toggle()<CR>", { desc = "Toggle UI" })
keymap.set("n", "<leader>db", "<cmd>lua require'dap'.step_back()<CR>", { desc = "Step Back" })
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Continue" })
keymap.set("n", "<leader>dd", "<cmd>lua require'dap'.disconnect()<CR>", { desc = "Disconnect" })
keymap.set("n", "<leader>de", "<cmd>lua require'dapui'.eval()<CR>", { desc = "Evaluate" })
keymap.set("n", "<leader>dg", "<cmd>lua require'dap'.session()<CR>", { desc = "Get Session" })
keymap.set("n", "<leader>dh", "<cmd>lua require'dap.ui.widgets'.hover()<CR>", { desc = "Hover over variables" })
keymap.set("n", "<leader>dsc", "<cmd>lua require'dap.ui.widgets'.scopes()<CR>", { desc = "Scopes" })
keymap.set("n", "<leader>di", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Step Into" })
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Step Over" })
keymap.set("n", "<leader>dp", "<cmd>lua require'dap'.pause.toggle()<CR>", { desc = "Pause" })
keymap.set("n", "<leader>dq", "<cmd>lua require'dap'.close()<CR>", { desc = "Quit" })
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<CR>", { desc = "Toggle REPL" })
keymap.set("n", "<leader>ds", "<cmd>lua require'dap'.continue()<CR>", { desc = "Start" })
keymap.set("n", "<leader>dt", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle Breakpoint" })
keymap.set("n", "<leader>dx", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Terminate Debugger" })
keymap.set("n", "<leader>du", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Step Out" })
keymap.set("n", "<leader>drt", "<cmd>lua require'dap-python'.test_method()<CR>", { desc = "Run test method" })
