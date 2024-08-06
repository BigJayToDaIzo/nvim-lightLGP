return {
	-- :h oil<C-d>
	-- Navigate the file tree like a text file in a buffer!
	"stevearc/oil.nvim",
	opts = {},
	dependencies = {
		{ "echasnovski/mini.icons", opts = {} },
	},
	config = function()
		require("oil").setup({
			delete_to_trash = true,
			view_options = {
				show_hidden = true,
			},
			float = {
				padding = 5,
				max_width = 0,
				max_height = 0,
				border = "rounded",
				-- Bugged in yazi/yazi.nvim as well
				-- win_options = {
				-- 	winblend = 20,
				-- },
			},
		})
	end,
	-- Keymap that thang!
	-- change command to function that pulls cwd from vim
	-- So Oil stays caught up with the last place it interacted
	-- with the fs. Default is cwd of current buffer
	vim.keymap.set("n", "<leader>e", "<CMD>Oil --float<CR>", { desc = "Open Oil FileTree" }),
}
