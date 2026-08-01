return {
	"stevearc/conform.nvim",
	opts = {},
	event = {
		"bufReadPre",
		"bufNewFile",
	},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofumpt", "gomodifytags", "gotests" },
				c = { "clang-format" },
				markdown = { "cbfmt" },
			},
			format_on_save = {
				timeout = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
