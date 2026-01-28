-- lsp depency/plugins
return {
	{
		-- mason
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		-- mason-tool-installer
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					-- formaters
					"stylua", -- lua
					"clang-format", -- java + C + C# + C++
					"gofumpt", -- go
					"golines",
					"gomodifytags",
					"gotests",
					-- linters
					"luacheck",
					-- DAP
				},
				integrations = {
					["mason-lspconfig"] = true,
					["mason-nvim-dap"] = true,
				},
			})
		end,
	},
	{
		-- mason-lspconfig
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					-- lsp's
					"lua_ls",
					"clangd",
					"gopls",
					"cmake",
					"hyprls",
					"pylsp",
					"jdtls",
				},
			})
		end,
	},
	{
		-- lspconfig
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({}) -- lua lsp init
			lspconfig.clangd.setup({}) -- C lsp init
			lspconfig.gopls.setup({}) -- go lsp init
			lspconfig.cmake.setup({}) -- Cmake lsp init
			lspconfig.hyprls.setup({}) -- hyprland lsp init
			lspconfig.pylsp.setup({}) -- python lsp init
			lspconfig.jdtls.setup({}) -- java lsp init

			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				update_in_insert = false,
				underline = true,
				severity_sort = true,
				float = true,
			})
			-- capabilities
			require("blink.cmp").get_lsp_capabilities()

			-- vim keybinds-for lspconfig
			vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
