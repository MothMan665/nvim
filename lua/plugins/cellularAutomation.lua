return {
	"Eandrju/cellular-automaton.nvim",
	config = function()
		require("cellular-automaton")
		vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
	end,
}
