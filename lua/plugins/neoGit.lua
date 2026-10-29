-- neoGit.lua
return {
	"NeogitOrg/neogit",
	lazy = true,
	dependencies = {
		"sindrets/diffview.nvim", -- Enables Code Diffs
		"m00qek/baleia.nvim",			-- Enables Styleing 
		-- Telescope.nvim
	},
	cmd = "Neogit",
	config = function()
		require("neogit").setup()
	end,
}
