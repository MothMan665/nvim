return {
	"neovim/nvim-lspconfig",
	config = function()

		vim.lsp.enable("lua_ls")
		vim.lsp.enable("clangd")
		vim.lsp.enable("gopls")
		vim.lsp.enable("pylsp")
		vim.lsp.enable("ltex")

		vim.diagnostic.config({
			virtual_text = true,
			signs = true,
			update_in_insert = false,
			underline = true,
			severaty_sort = true,
			float = true,
		})

		require("blink.cmp").get_lsp_capabilities()

	end,
}
