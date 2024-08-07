return {
	-- VERY cool plugin to help you get exactly where you want to go
	-- :h flash<C-d>
	--
	"folke/flash.nvim",
	event = "VeryLazy",
	config = function()
		require("flash").setup({
			modes = {
				-- NOTE: Upgrades vanilla search to have flashpoints
				-- NOT default behavior, but why clutter keymaps?
				search = { enabled = true },
			},
		})
	end,
}
