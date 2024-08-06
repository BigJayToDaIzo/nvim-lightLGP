-- Begin vim global and local options
-- Set <space> as the leader key see `:h mapleader`
--  NOTE: ALL this must happen before plugins are loaded (otherwise you'll make a mess of overlapping/colliding binds)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ setting options ]]
-- :h vim.opt
--  NOTE: you can change these options as you wish!
--  for more options, :h option-list

-- Custom settings
-- make line numbers default
vim.opt.number = true
-- Disable timeout on leader/keybind chords
vim.opt.timeout = false
vim.opt.ttimeout = true
-- You can also add relative line numbers, for help with jumping.
-- Experiment for yourself to see if you like it!
vim.opt.relativenumber = true
-- Enable termguicolors for MANY plugins that require it
vim.opt.termguicolors = true
-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Show/don't show the mode, since one of your plugins likely shows it elsewhere
-- I like to keep the cmdline OG and seeing it there helps me
vim.opt.showmode = true

-- Turn on cursor rulers
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- Set nvim cwd to last file opened (breaks debugger otherwise)
vim.opt.acd = true

-- Sync clipboard between os and neovim.
-- Remove this option if you want your os clipboard to remain independent.
-- :h 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- Enable break indent
vim.opt.breakindent = true

-- Customize tab stuffs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
-- vim.bo.softabstop = 2

-- Save undo history
-- This has been a bane and a boon.  Tread carefully
vim.opt.undofile = true

-- Case-insensitive searching unless \c or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
-- :h list
-- And :h listchars
-- vim.opt.list = true
-- vim.opt.listchars = { tab = "󰌒 ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
-- Incredibly helpful
vim.opt.inccommand = "split"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 3

-- Highlight search results
vim.opt.hlsearch = true

-- Set custom options for folding
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99

-- One single status line at bottom of screen
-- :h laststatus for more info on 0-3 and how they act
vim.opt.laststatus = 3

--Custom autocommands
-- Undercurl magix.  Will not work on all term emulators
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
