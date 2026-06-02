return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "helix"
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (Which-key)",
		},

		-- Telescope
		{
			"<C-p>",
			mode = { "n" },
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Find Files (Telescope)",
		},
		{
			"<leader>fg",
			mode = { "n" },
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Live Grep (Telescope)",
		},

		-- Lspconfig
		{
			"<leader>lh",
			mode = { "n" },
			function()
				vim.lsp.buf.hover()
			end,
			desc = "Hover (Lspconfig)",
		},
		{
			"<leader>ld",
			mode = { "n" },
			function()
				vim.lsp.buf.definition()
			end,
			desc = "Definations (Lspconfig)",
		},
		{
			"<leader>lca",
			mode = { "n", "v" },
			function()
				vim.lsp.buf.definition()
			end,
			desc = "Code Actions (Lspconfig)",
		},
	},
}
