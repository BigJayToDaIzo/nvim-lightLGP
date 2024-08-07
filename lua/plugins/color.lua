return {
	{
		-- Gorgeous color picker right in the terminal
		-- :Ccc<C-d> to get started!
		"uga-rosa/ccc.nvim",
		config = function()
			-- Empty opts table passed into setup means...
			-- DEFAULT SETTINGS!
			require("ccc").setup({})
		end,
	},
	{
		-- Colorizer allows you to see exactly what color codes look like!
		-- Example #1234ab
		-- :h colorizer<C-d>
		-- :Colorizer<C-d>
		"NvChad/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({})
		end,
	},
}
