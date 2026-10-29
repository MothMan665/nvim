-- oil.lua
return {
	"stevearc/oil.nvim",
	lazy = false,
	dependencies = { 
		{ "nvim-mini/mini.icons", opts = {} },
	},
	config = function()
		require("oil").setup()
	end,
}
