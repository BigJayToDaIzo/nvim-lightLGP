return {
	-- Folke is the Best in the game at many things
	-- This one is lightweight as heck
	-- :h todo<C-d>
	-- :Todo <C-d>
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },

	-- TODO: Add those sweet Todo Keybinds!
	--
	-- NOTE: To<C-d> should cover it for now!
	--
	-- NOTE: TodoTelescope only recursively parses cwd!
	--
	-- all options
	-- FIX: fix me plz
	-- FIXME: fixme plz
	-- BUG: bug noplz
	-- TODO: todo plz
	-- HACK: hack plz
	-- WARN: warm plz
	-- PERF: perf plz
	-- NOTE: note plz
	-- TEST: test plz
	config = function()
		require("todo-comments").setup({
			keywords = {
				FIX = { icon = "", color = "#f00b1b" },
			},
			-- Keybind goodness
			vim.keymap.set("n", "<leader>st", "<CMD>TodoTelescope<CR>", { desc = "[S]earch [T]odo  " }),
		})
	end,
}
