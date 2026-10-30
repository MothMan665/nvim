-- telescope.lua
return {
	"nvim-telescope/telescope.nvim",
	"nvim-telescope/telescope-ui-select.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function() -- sets up telescope
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({
						require("telescope").load_extension("ui-select"),
					}),
				},
			},
		})
		require("telescope").load_extension("ui-select")
	end,
}
