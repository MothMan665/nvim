-- lspConfig.lua
return {
	"neovim/nvim-lspconfig",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		vim.lsp.enable("lua_ls") -- lua
		vim.lsp.enable("clangd") -- C
		vim.lsp.enable("gopls") -- Go
		vim.lsp.enable("pylsp") -- Pyton
		vim.lsp.enable("ltex") -- Markdown
		vim.lsp.enable("org") -- orgmode

		vim.diagnostic.config({
			virtual_text = true,
			signs = true,
			update_in_inser = false,
			severaty_sort = true,
			float = true,
		})
		-- require("blink.cmp").get_lsp_capabilities()
	end,
}
