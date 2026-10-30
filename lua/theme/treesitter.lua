-- treesiter.lua
return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = { "c", "lua", "go", "markdown" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
