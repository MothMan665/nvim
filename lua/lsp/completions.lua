-- completions.lua
return {
	"saghen/blink.cmp",
	dependencies = {
		"saghen/blink.lib",
		"rafamadriz/friendly-snippets",
	},
	verson = "*",
	config = function()
		require("blink.cmp").build():pwait()
	end,

	opts = {
		keymaps = {
			preset = "default",
		},
		completion = {
			documentation = {
				auto_show = true,
			},
		},

		sources = {
			default = {
				"lsp",
				"path",
				"snippets",
				"buffer",
			},
		},
		fuzzy = {
			implementation = "rust",
		},
	},
}
