return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"bufNewFile",
	},
	config = function()
		require("lint").linters_by_ft = {
			lua = { "selene" },
			markdown = { "alex" },
			c = { "ast-grep" },
		}
	end,
}
