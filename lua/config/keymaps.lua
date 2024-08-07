-- [[ Basic Keymaps ]]
-- See `:help vim.keymap.set()`
-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
-- Diagnostic keymaps
vim.keymap.set("n", "<leader>d]", function()
	vim.diagnostic.jump({ count = 1 })
end, { desc = "Next Diagnostic message" })
vim.keymap.set("n", "<leader>d[", function()
	vim.diagnostic.jump({ count = -1 })
end, { desc = "Go to previous Diagnostic message" })
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
-- turn off Ctrl-Z quit cuz I hate it
vim.keymap.set("n", "<C-z>", "<Nop>")
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
--Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- NOTE: Global notes on which plugins control which keychord sets aka <leader>C
-- where C is the chord the subcommands will dictate
-- Map leaders here so mini.clue quits screwing things up?
-- mini.choice is NOT playing well with gitsigns binds NOR my space leader
-- this hack is necessary for it to group <leader>g binds to Gitsigns
--
-- NOTE: Gitsigns will take chord <leader>g*
vim.keymap.set("n", "<leader>g", function() end, { desc = "+Git" })

-- NOTE: Oil unchorded using <leader>e (you may want to reclaim to chord something else, or use a different bind entirely)
--
-- NOTE: Debug/Diagnostic chorded under <leader>d*
--
-- NOTE: Telescope chorded under <leader>s*
-- PERF:<leader>sk (search keybind is your command palette!)
--
-- NOTE: Todo need to be chorded? --ok with :Todo<C-d> for now! or <leader>st
--
-- NOTE: Bufferline claims <leader>b*
--
-- NOTE: Notifications Dismiss takes <leader>x (for now)
--
-- NOTE: LSP chorded under <leader>l
--
-- NOTE: Precognition is simple enough to run from cmdline. :Precognition <C-d>
--
-- FIX: Chords claimed thus far <leader>[b, d, e, g, l, s, x] (update array as we add things)
