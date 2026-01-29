return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		require("lint").linters_by_ft = {
			lua = { "selene" },
			java = { "checkstyle" },
		}
	end,
}
