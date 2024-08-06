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
vim.keymap.set({ "n", "x" }, "<M-Space>", "<cmd>WhichKey<CR>", { desc = "Open WhichKey menu" })
--Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- map leaders here so plugins quit screwing things up?
-- NOTE: Global notes on which plugins control which keychord sets aka <leader>C
-- where C is the chord the subcommands will dictate
-- NOTE: Gitsigns probably going to need a chord. <leader>g*
-- mini.choice is NOT playing well with gitsigns binds NOR my space leader
-- this hack is necessary for it to group <leader>g binds to Gitsigns
vim.keymap.set("n", "<leader>g", function() end, { desc = "+Gitsigns" })
-- NOTE: Oil unchorded using <leader>e (may need to reclaim to chord something)
-- NOTE: Debug/Diagnostic chorded under <leader>d*
-- NOTE: Telescope chorded under <leader>s* (may need to be broadened to <leader>t)
-- NOTE: Todo need to be chorded? --ok with :Todo<C-d> for now!
-- Starting to feel like a need for a chord for
-- :lua require'todo-comments'.jump_next/prev()
-- NOTE: Completion chorded under <leader>? --More like just check collisions and readiness in
-- <leader>sk (search keybind is your command palette!)
-- NOTE: Bufferline claims <leader>b*
-- UPDATE IT after you install plugins with default bindings! (or want to tweak your own without collisions)
-- NOTE: Notifications Dismiss takex <leader>x (for now)
-- NOTE: LSP binds get their own <leader>l
-- FIX: Chords claimed thus far <leader>[b, d, e, g, l, s, x] (update array as we add things)
-- NOTE: We now have which-key hints, so groups in <leader> array
-- will need to be added to the clues table there or here if that doesnt work correctly

-- -- Precognition binds
-- vim.keymap.set("n", "<leader>pt", "<cmd>lua require('precognition').toggle()<cr>", { desc = "[P]recognition [T]oggle" })
-- vim.keymap.set("n", "<leader>pp", "<cmd>lua require('precognition').peek()<cr>", { desc = "[P]recognition [P]eek" })
-- vim.keymap.set("n", "<leader>ps", "<cmd>lua require('precognition').show()<cr>", { desc = "[P]recognition [S]how" })
-- vim.keymap.set("n", "<leader>ph", "<cmd>lua require('precognition').hide()<cr>", { desc = "[P]recognition [H]ide" })
