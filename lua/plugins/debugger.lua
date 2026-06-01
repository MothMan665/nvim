return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"jay-babu/mason-nvim-dap.nvim",
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		local dap, dapui, mason_dap, dap_text =
			require("dap"), require("dapui"), require("mason-nvim-dap"), require("nvim-dap-virtual-text")

		dap_text.setup() -- enables virt text

		mason_dap.setup({
			ensure_installed = { "cppdbg", "java-test" },
			automatic_installation = true,
			handlers = {
				function(config)
					require("mason-nvim-dap").default_setup(config)
				end,
			},
		})

		-- configs
		dap.configurations = {
			c = {
				{
					name = "Launch file",
					type = "cppdbg",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopAtEntry = false,
					MIMode = "lldb",
				},
				{
					name = "Attach to lldbserver :1234",
					type = "cppdbg",
					request = "launch",
					miDebuggerServerAddress = "localhost:1234",
					miDebuggerPath = "/usr/bin/lldb",
					cwd = "${workspaceFolder}",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
				},
			},
			java = {
				{
					name = "Launch file",
					type = "java-test",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopAtEntry = false,
					MIMode = "java-test",
				},
				{
					name = "Attach to lldbserver :1234",
					type = "java-test",
					request = "launch",
					miDebuggerServerAddress = "localhost:1234",
					miDebuggerPath = "/usr/bin/java",
					cwd = "${workspaceFolder}",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
				},
			},
		}

		-- dapui
		dapui.setup()
		vim.fn.sign_define("DapBreakpoint", { text = "B" })
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

		-- 		require("dapui").setup()
		-- 		-- dap adapters
		-- 		dap.adapters.gdb = {
		-- 			type = "executable",
		-- 			command = "gdb",
		-- 			args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
		-- 		}
		--
		-- 		-- dap ui configs
		-- 		dap.listeners.before.attach.dapui_config = function()
		-- 			dapui.open()
		-- 		end
		-- 		dap.listeners.before.launch.dapui_config = function()
		-- 			dapui.open()
		-- 		end
		-- 		dap.listeners.before.event_terminated.dapui_config = function()
		-- 			dapui.close()
		-- 		end
		-- 		dap.listeners.before.event_exited.dapui_config = function()
		-- 			dapui.close()
		-- 		end
		-- 		-- keymaps
		-- 		-- movment comands
		-- 		vim.keymap.set("n", "<F1>", dap.continue, {})
		-- 		vim.keymap.set("n", "<F2>", dap.step_into, {})
		-- 		vim.keymap.set("n", "<F3>", dap.step_over, {})
		-- 		vim.keymap.set("n", "<F4>", dap.step_out, {})
		-- 		vim.keymap.set("n", "<F5>", dap.step_back, {})
		-- 		vim.keymap.set("n", "<F12>", dap.restart, {})
		-- 		-- breakpoints
		-- 		vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, {})
		-- 		vim.keymap.set("n", "<Leader>dB", dap.set_breakpoint, {})
		-- 		-- other
		-- 		vim.keymap.set("n", "<Leader>dc", dap.run_to_cursor, {})
		--
		-- 		-- dap configs
		-- 		-- C/C++/Rust
		-- 		dap.configurations.c = {
		-- 			{
		-- 				name = "Launch",
		-- 				type = "gdb",
		-- 				request = "launch",
		-- 				program = function()
		-- 					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		-- 				end,
		-- 				cwd = "${workspaceFolder}",
		-- 				stopAtBeginningOfMainSubprogram = false,
		-- 			},
		-- 			{
		-- 				name = "Select and attach to process",
		-- 				type = "gdb",
		-- 				request = "attach",
		-- 				program = function()
		-- 					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		-- 				end,
		-- 				pid = function()
		-- 					local name = vim.fn.input("Executable name (filter): ")
		-- 					return require("dap.utils").pick_process({ filter = name })
		-- 				end,
		-- 				cwd = "${workspaceFolder}",
		-- 			},
		-- 			{
		-- 				name = "Attach to gdbserver :1234",
		-- 				type = "gdb",
		-- 				request = "attach",
		-- 				target = "localhost:1234",
		-- 				program = function()
		-- 					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		-- 				end,
		-- 				cwd = "${workspaceFolder}",
		-- 			},
		-- 		}
		-- 		dap.configurations.cpp = dap.configurations.c
		-- 		dap.configurations.rust = dap.configurations.c
		-- 		dap.configurations.lua = dap.configurations.c
		-- 		dap.configurations.java = {
		-- 			{},
		-- 		}
	end,
}
