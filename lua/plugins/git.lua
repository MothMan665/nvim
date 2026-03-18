return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration
		"YouSame2/inlinediff-nvim", -- inline diff

		-- Only one of these is needed.
		"nvim-telescope/telescope.nvim", -- optional
	},
	config = function()
		require("neogit").setup()
	end,
}
