-- Begin vim global and local options
-- Set <space> as the leader key see `:help mapleader`
-- Set all global options before loading any plugins
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ setting options ]]
-- see `:help vim.opt`
--  note: you can change these options as you wish!
--  for more options, you can see `:help option-list`
--  holy shib there are so many options here 👆

-- custom settings
-- make line numbers default
vim.opt.number = true
-- disable timeout on leader/keybind chords
vim.opt.timeout = false
vim.opt.ttimeout = true
-- you can also add relative line numbers, for help with jumping.
--  experiment for yourself to see if you like it!
vim.opt.relativenumber = true
-- enable termguicolors for lualine
vim.opt.termguicolors = true
-- enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- don't show the mode, since it's already in status line
vim.opt.showmode = true

-- turn on cursor rulers
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

--Set nvim cwd to last file opened (breaks debugger otherwise)
vim.opt.acd = true

-- sync clipboard between os and neovim.
--  remove this option if you want your os clipboard to remain independent.
--  see `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- enable break indent
vim.opt.breakindent = true

-- customize tab stuffs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
-- vim.bo.softabstop = 2

-- save undo history
vim.opt.undofile = true

-- case-insensitive searching unless \c or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- sets how neovim will display certain whitespace in the editor.
--  see `:help 'list'`
--  and `:help 'listchars'`
-- vim.opt.list = true
-- vim.opt.listchars = { tab = "󰌒 ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 3

-- highlight search results
vim.opt.hlsearch = true
-- abstract away vim.opt code into submodule

-- Set custom options for folding
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99

-- One single status line at bottom of screen
vim.opt.laststatus = 3

--Custom autocommands
--Unclear if this is working, I've yet to see undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
