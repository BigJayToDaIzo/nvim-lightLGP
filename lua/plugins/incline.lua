return {
	-- Tabs are a layouts for buffers
	-- I like this very much, especially when tabs get busy with windows
	-- :h incline
	"b0o/incline.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"lewis6991/gitsigns.nvim",
	},
	config = function()
		-- Recipe copy/pasted right out of the README
		-- There's another with all kinds of lsp info
		-- but I have that on my lualine
		local helpers = require("incline.helpers")
		local devicons = require("nvim-web-devicons")
		require("incline").setup({
			window = {
				padding = 0,
				margin = { horizontal = 0 },
			},
			render = function(props)
				local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
				if filename == "" then
					filename = "[No Name]"
				end
				local ft_icon, ft_color = devicons.get_icon_color(filename)
				local modified = vim.bo[props.buf].modified
				return {
					ft_icon and { " ", ft_icon, " ", guibg = ft_color, guifg = helpers.contrast_color(ft_color) } or "",
					" ",
					{ filename, gui = modified and "bod,italic" or "bold" },
					" ",
					guibg = "#44406e",
				}
			end,
		})
		-- End recipe paste
	end,
}
