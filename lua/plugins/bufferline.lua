return {
	-- I've done quite a bit of 'tweaking here'
	-- :h bufferline<C-d>
	-- This is one of the few plugins I didn't leave at default settings
	-- Check the configuration options on the github page
	"akinsho/bufferline.nvim",
	branch = "main",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	enabled = true,
	config = function()
		require("bufferline").setup({
			options = {
				-- ALL configuration takes place inside this options table
				themable = true,
				indicator = {
					style = "underline",
				},
				buffer_close_icon = "󰅚 ",
				modified_icon = " ",
				close_icon = " ",
				left_trunc_marker = "󰳞 ",
				right_trunc_marker = "󰳠 ",
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local s = " "
					for e, n in pairs(diagnostics_dict) do
						local sym = e == "error" and "󰅚 " or (e == "warning" and " " or " ")
						s = s .. n .. sym
					end
					return s
				end,
				separator_style = "slant", -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
				-- I like oil, but the neotree nerds will like this!
				-- offsets = {
				-- 	{
				-- 		filetype = "neo-tree",
				-- 		text = "The Matrix is everywhere. -Morpheus",
				-- 		highlight = "Directory",
				-- 		separator = true,
				-- 		text_align = "left",
				-- 	},
				-- },
				color_icons = true,
			},
		})
		-- Bufferline keymaps
		vim.keymap.set("n", "<leader>bc", "<cmd>bd<CR>", { desc = "Close Buffer" })
		vim.keymap.set("n", "<leader>bn", "<cmd>bn<CR>", { desc = "Next Buffer" })
		vim.keymap.set("n", "<leader>bp", "<cmd>bp<CR>", { desc = "Previous Buffer" })
		vim.keymap.set("n", "<leader>br", "<cmd>BufferLineMoveNext<CR>", { desc = "Buffer Move Right" })
		vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineMovePrev<CR>", { desc = "Bbuffer Move Left" })
		vim.keymap.set("n", "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", { desc = "Buffer Close Others" })
		vim.keymap.set("n", "H", "<cmd>BufferLineCyclePrev<cr>")
		vim.keymap.set("n", "L", "<cmd>BufferLineCycleNext<cr>")
		vim.keymap.set("n", "<M-h>", "<cmd>BufferLineMovePrev<cr>")
		vim.keymap.set("n", "<M-l>", "<cmd>BufferLineMoveNext<cr>")
	end,
}
