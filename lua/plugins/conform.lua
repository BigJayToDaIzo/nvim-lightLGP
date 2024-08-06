return {
	-- Linting is largely done with our OSS hero
	{
		-- :h conform || :Conf<C-d>
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			-- I just set it up to lint on save
			-- Customize or remove this keymap to your liking
			-- {
			--   "<leader>f",
			--   function()
			--     require("conform").format({ async = true })
			--   end,
			--   mode = "",
			--   desc = "Format buffer",
			-- }
		},

		opts = {
			-- Define formatters
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform can also run multiple formatters sequentially
				-- python = { "isort", "black" },
				go = { "goimports", "gofmt" },
				-- You can use a sub-list to tell conform to run *until* a formatter found
				javascript = { { "prettierd", "prettier" } },
				["*"] = { "codespell" },
				["_"] = { "trim_whitespace" },
			},
			-- Default opts
			default_format_opts = {
				lsp_format = "fallback",
			},
			-- Format on save, my fav
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
			-- Customize formatters yo 󰊪
			formatters = {
				shfmt = {
					prepend_args = { "-i", "2" },
				},
			},
		},
	},
}
