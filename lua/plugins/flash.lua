return {
	-- VERY cool plugin to help you get exactly where you want to go
	-- :h flash<C-d>
	--
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = {},
	config = function(opts)
		require("flash").setup({
			modes = {
				-- NOTE: Upgrades vanilla search to have flashpoints
				search = { enabled = true },
			},
		})
	end,
}
