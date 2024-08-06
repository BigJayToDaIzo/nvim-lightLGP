return {
	-- Popup window for Symbol tracking!
	-- :h outline<C-d>
	-- :Outline<C-d>
	"hedyhli/outline.nvim",
	config = function()
		require("outline").setup({})
		vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Symbols Outline" })
	end,
}
