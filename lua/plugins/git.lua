return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration
		"YouSame2/inlinediff-nvim", -- inline diff
	},
	config = function()
		require("neogit").setup()
	end,
}
