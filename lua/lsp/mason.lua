return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()	
		end,
	},

		-- mason-tool-installer
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_install = {
					-- Formater's
					"stylua", -- lua
					-- Linter's
				},
				intergrations = {
					["mason-lspconfig"] = true,
					["mason-nvim-dap"] = true,
				},
			})
		end,
	},

	-- mason-lspconfig
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					-- lsp's
					"lua_ls",
					"clangd",
					"gopls",
					"pylsp",
					"ltex",
				}
			})
		end,
	}
}
