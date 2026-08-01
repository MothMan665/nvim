return {
	"mawkler/modicator.nvim",	
	dependencies = "mawkler/onedark.nvim",
	opts = {
		show_warnings = true,
	},
	config = function()
		require("modicator").setup({})
		vim.o.cursorline = true
		vim.o.number = true
		vim.o.termguicolors = true
	end,

}
