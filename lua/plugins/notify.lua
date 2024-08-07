return {
	-- Notifications
	-- WARN: This tool causes a lot of cursor flicker for me
	-- I sadly cannot seem to find a decent replacement so I endure and blame nvidia
	-- :h nvim-notify.txt
	-- VERY sensible defaults
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			fps = 90,
		})
		-- Point vims notification engine at plugin
		vim.notify = require("notify")
		-- Keybinds!
		vim.keymap.set("n", "<leader>x", function()
			vim.notify.dismiss()
		end, { desc = "Dismiss Notifications" })
		-- Search Notification History in Telescope
		vim.keymap.set("n", "<leader>so", "<CMD>Telescope notify<CR>", { desc = "[S]earch N[o]tifications" })
	end,
}
