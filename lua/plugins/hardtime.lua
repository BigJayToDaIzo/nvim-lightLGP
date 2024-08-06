return {
	-- Tries to help you improve your motion efficiency!
	-- :h hardtime
	-- :Hardtime <C-d>
	"m4xshen/hardtime.nvim",
	-- You can temp disable in the cmdline with :Hardtime toggle/disable
	-- :Hardtime <C-d>
	-- enable = false,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
	},
	opts = {
		max_count = 8,
		disable_mouse = false,
		allow_different_key = true,
		disabled_filetypes = { "lazy", "mason", "oil" },
	},
}
