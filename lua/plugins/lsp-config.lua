-- lsp depency/plugins
 return {
	{
		-- mason
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		-- mason-lspconfig
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {"lua_ls", "clangd", "gopls", "cmake", "hyprls", "pylsp", "jdtls",} })
		end
	},
	{
		-- lspconfig
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.gopls.setup({})
			lspconfig.cmake.setup({})
			lspconfig.hyprls.setup({})
			lspconfig.pylsp.setup({})
			lspconfig.jdtls.setup({})

			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				update_in_insert = false,
				underline = true,
				severity_sort = false,
				float = true,
			})
			-- capabilities
			require('blink.cmp').get_lsp_capabilities()

			-- vim keybinds-for lspconfig
			vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})
		end
	},
}
