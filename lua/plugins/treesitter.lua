return {
	{
		-- NOTE: I say :TS<C-d> is good enough for now
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		-- all modules must be explicitly enabled
		config = function()
			require("nvim-treesitter.configs").setup({
				-- This is what I use for my daily workflow, yours may not require all of it
				-- Just delete the lines you don't need!
				ensure_installed = {
					"angular",
					"bash",
					"c",
					"c_sharp",
					"cmake",
					"comment",
					"cpp",
					"diff",
					"fish",
					"gitcommit",
					"gitignore",
					"go",
					"gotmpl",
					"html",
					"http",
					"kdl",
					"lua",
					"luadoc",
					"luau",
					"markdown",
					"markdown_inline",
					"ninja",
					"python",
					"query",
					"regex",
					"ruby",
					"rust",
					"scss",
					"templ",
					"toml",
					"typescript",
					"vim",
					"vimdoc",
					"xml",
					"yaml",
				},
				-- NOTE:This is the wayland tiling window manager I use, yours' configuration
				-- language may be available in the behemoth catalog available or have a similar
				-- quickfix like this one!
				vim.filetype.add({ pattern = { [".*/hypr/.*%.conf"] = "hyprlang" } }),
				-- Defaults in case we want to change without needing docs
				-- sync_install = false,
				-- auto_install = true,
				-- ignore_install = { "javascript" },
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				modules = {},
			})
		end,
		-- There are additional nvim-treesitter modules that you can use to interact
		-- with nvim-treesitter. You should go explore a few and see what interests you:
		-- Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
	},
	{
		-- Keep the top of the block in the first few lines of the buffer. SO NICE
		"nvim-treesitter/nvim-treesitter-context",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("treesitter-context").setup({
				max_lines = 8,
				min_window_height = 10,
			})
		end,
	},
}
