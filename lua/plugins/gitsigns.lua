return {
	-- Adds git related signs to the gutter, as well as utilities for managing changes
	-- :h gitsigns.text
	-- :Gitsigns <C-d> takes you far!
	-- We tweaked defaults a bit here too
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			-- Options tweaked here!
			signs = {
				add = { text = "" },
				change = { text = "𝚫 " },
				delete = { text = "󱂥" },
				topdelete = { text = "‾" },
				changedelete = { text = " " },
				untracked = { text = "󰔧 " },
			},
			numhl = true,
			word_diff = false,
			-- On buffer attach (auto by default)
			on_attach = function(bufnr)
				local gitsigns = require("gitsigns")
				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.buffer = bufnr
					vim.keymap.set(mode, l, r, opts)
				end
				-- Navigation
				map("n", "]c", function()
					if vim.wo.diff then
						vim.cmd.normal({ "]c]", bang = true })
					else
						gitsigns.nav_hunk("next")
					end
				end)
				map("n", "[c", function()
					if vim.wo.diff then
						vim.cmd.normal({ "[c", bang = true })
					else
						gitsigns.nav_hunk("prev")
					end
				end)
				-- Actions!
				map("n", "<leader>gs", gitsigns.stage_hunk, { desc = "n_Git Stage Hunk" })
				map("n", "<leader>gr", gitsigns.reset_hunk, { desc = "n_Git Reset Hunk" })
				map("v", "<leader>gs", function()
					gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end, { desc = "v_Git Stage Hunk" })
				map("v", "<leader>gr", function()
					gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end, { desc = "v_Git Reset Hunk" })
				map("n", "<leader>gS", gitsigns.stage_buffer, { desc = "n_Git Stage Buffer" })
				map("n", "<leader>gu", gitsigns.undo_stage_hunk, { desc = "n_Git Undo Stage Hunk" })
				map("n", "<leader>gR", gitsigns.reset_buffer, { desc = "n_Git Reset Buffer" })
				map("n", "<leader>gp", gitsigns.preview_hunk, { desc = "n_Git Preview Hunk" })
				map("n", "<leader>gb", function()
					gitsigns.blame_line({ full = true })
				end, { desc = "n_Git Blame Line" })
				map("n", "<leader>gtc", gitsigns.toggle_current_line_blame, { desc = "n_Git Toggle CurLine Blame" })
				map("n", "<leader>gd", gitsigns.diffthis, { desc = "n_Git Diff" })
				map("n", "<leader>gD", function()
					gitsigns.diffthis("~")
				end, { desc = "n_Git Diff~" })
				map("n", "<leader>gtd", gitsigns.toggle_deleted, { desc = "n_Git Toggle Deleted" })

				-- Text object
				map({ "o", "x" }, "<leader>gR", ":<C-U>Gitsigns select_hunk<CR>", { desc = "ox_Git Select Hunk" })
			end,
		})
	end,
}
