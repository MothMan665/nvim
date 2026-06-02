return {
	{
	"nvim-telescope/telescope.nvim", version = "*",
	dependecies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		}
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			-- This is your opts table
			require("telescope").setup({
			extensions = {
			["ui-select"] = {
			require("telescope.themes").get_dropdown {
			require("telescope").load_extension("ui-select")
						},
					},
				},
			})
				-- To get ui-select loaded and working with telescope, you need to call
				-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end
	}
}
