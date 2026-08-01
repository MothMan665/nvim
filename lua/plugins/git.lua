return {
	"NeogitOrg/neogit",
	lazy = true,
	dependencies = {
		"sindrets/diffview.nvim", -- shows code diffs
		"m00qek/baleia.nvim", -- log pager
	},
	config = function()
		require("neogit").setup()
	end,
}
