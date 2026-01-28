return {
	"stevearc/conform.nvim",
	opts = {},
	event = { "BufReadpre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "black" },
				-- You can customize some of the format options for the filetype (:help conform.format)
				rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform will run the first available formatter
				java = { "clang-format" },
				go = { "gofumpt", "golines", "gomodifytags", "gotests" },
			},
			format_on_save = {
				timeoute_ms = 500,
				lsp_fallback = true,
			},
		})
		vim.keymap.set({ "n", "v" }, "<leader>f", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeoute_ms = 500,
			})
		end, { desc = "Format file or range (visual mode)" })
	end,
}
