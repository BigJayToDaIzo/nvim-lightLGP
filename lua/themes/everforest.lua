return {
	-- NOTE: All time fav theme daily driver!
	"sainnhe/everforest",
	-- :h everforest.txt and behold her beauty! 🤩
	lazy = false,
	priority = 1000,
	config = function()
		-- Optionally configure and load the colorscheme
		-- directly inside the plugin declaration.
		vim.g.everforest_enable_italic = true
		vim.cmd.colorscheme("everforest")
	end,
}
