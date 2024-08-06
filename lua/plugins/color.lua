return {
	{
		-- Gorgeous color picker right in the terminal
		-- :Ccc<C-d> to get started!
		"uga-rosa/ccc.nvim",
		config = function()
			require("ccc").setup()
		end,
	},
	{
		-- Colorizer allows you to see exactly what color codes look like!
		"NvChad/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({})
		end,
	},
}
