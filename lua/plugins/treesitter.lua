return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter")
		config.setup({
			install = { "c", "lua", "java", "go", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
