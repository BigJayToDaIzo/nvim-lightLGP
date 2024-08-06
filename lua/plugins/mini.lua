-- This could be substantial, but I'm piecemealing these
-- modules in instead of grabbing a 40pack and sorting
-- through THAT mess for a week.
-- I'm starting to think mini plugins hate my box
return {
	-- NOTE: Keybind hints
	-- FIX: Breaking when opening new files and other odd buffer transitions
	{
		"echasnovski/mini.clue",
		version = false,
		config = function()
			local miniclue = require("mini.clue")
			miniclue.setup({
				-- Array of opt-in triggers which start custom key query process.
				-- **Needs to have something in order to show clues**.
				triggers = {
					-- Leader triggers
					{ mode = "n", keys = "<Leader>" },
					{ mode = "x", keys = "<Leader>" },

					-- Built-in completion
					{ mode = "i", keys = "<C-x>" },

					-- `g` key
					{ mode = "n", keys = "g" },
					{ mode = "x", keys = "g" },

					-- Marks
					{ mode = "n", keys = "'" },
					{ mode = "n", keys = "`" },
					{ mode = "x", keys = "'" },
					{ mode = "x", keys = "`" },

					-- Registers
					{ mode = "n", keys = '"' },
					{ mode = "x", keys = '"' },
					{ mode = "i", keys = "<C-r>" },
					{ mode = "c", keys = "<C-r>" },

					-- Window commands
					{ mode = "n", keys = "<C-w>" },

					-- `z` key
					{ mode = "n", keys = "z" },
					{ mode = "x", keys = "z" },
				},

				-- Array of extra clues to show
				clues = {
					miniclue.gen_clues.builtin_completion(),
					miniclue.gen_clues.g(),
					miniclue.gen_clues.marks(),
					miniclue.gen_clues.registers(),
					miniclue.gen_clues.windows(),
					miniclue.gen_clues.z(),
					-- Enhance this by adding descriptions for <Leader> mapping groups
					{ mode = "n", keys = "<Leader>d", desc = "+n_Debug" },
					{ mode = "n", keys = "<Leader>s", desc = "+n_Search" },
					{ mode = "n", keys = "<Leader>b", desc = "+n_Buffer" },
					{ mode = "n", keys = "<Leader>l", desc = "+n_LSP" },
				},

				-- Clue window settings
				window = {
					-- Floating window config
					config = {
						width = "auto",
					},

					-- Delay before showing clue window
					delay = 0,

					-- Keys to scroll inside the clue window
					scroll_down = "<C-d>",
					scroll_up = "<C-u>",
				},
			})
		end,
	},
}
