return {
	-- CellularAutomaton keymap
	vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>"),

	-- neotree keys
	vim.keymap.set("n", "<C-t>", ":Neotree<CR>"),

	-- Neogit key
	vim.keymap.set("n", "<leader>gt", ":Neogit<CR>"),

	-- Maven
	vim.keymap.set("n", "<leader>mv", ":Maven<CR>"),

	-- 	vim.keymap.set("n", "<leader>fa", ":Seeker files<CR>", desc == "Seek Files"),
	-- 	vim.keymap.set("n", "<leader>ff", ":Seeker git_files<CR>", desc == "Seek Git Files"),
	-- 	vim.keymap.set("n", "<leader>fg", ":Seeker grep<CR>", desc == "Seek Grep"),
}
