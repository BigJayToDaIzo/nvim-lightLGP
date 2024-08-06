return {
	-- :h dap.txt
	"mfussenegger/nvim-dap",
	-- :h dap-adapter dap-configuration dap-widgets dap-mapping dap-api
	-- https://github.com/mfussenegger/nvim-dap/wiki/Extensions
	event = "VeryLazy",
	dependencies = {
		{
			-- :h nvim-lint
			-- TODO Lint some Lua and beyond plz
			"mfussenegger/nvim-lint",
		},
		{
			-- Our first extension from wiki above
			-- Recommends lazydev.nvim? Ponnder and revisit.
			-- It is highly recommended to use lazydev.nvim to
			-- enable type checking for nvim-dap-ui to get type checking,
			-- documentation and autocompletion for all API functions.
			-- :h dapui.setup()
			"rcarriga/nvim-dap-ui",
			dependencies = "nvim-neotest/nvim-nio",
			-- neotest module in lua/plugins/neotest.lua ASAP
		},
		-- Installs the debug adapters for you
		-- Mason has very reasonable defaults and I don't see a need to abstract it's configuration yet
		-- :h mason-quickstart
		"williamboman/mason.nvim",
		-- Mason 🤝 nvim-dap! 👊
		-- :h DapInstall
		"jay-babu/mason-nvim-dap.nvim",
		-- Inline virtual debug info
		"theHamsta/nvim-dap-virtual-text",

		-- Add your own debuggers here
		-- "mfussenegger/nvim-dap-python", Mason seems to NOT handle this automatically so far
	},

	config = function()
		-- DAP config!
		local dap = require("dap")
		local dapui = require("dapui")
		dapui.setup()
		require("nvim-dap-virtual-text").setup({})
		-- DUNDAP config!

		-- LINT config!
		require("lint").linters_by_ft = {
			-- Dont forget to install them with Mason!
			lua = { "luacheck" },
			-- go = { "golangci-lint", "gospel", "semgrep", },
			-- python = { "pylint", "mypy", "ruff", },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				-- try_lint without arguments runs the linters defined in `linters_by_ft`
				-- for the current filetype
				require("lint").try_lint()

				-- You can call `try_lint` with a linter name or a list of names to always
				-- Default configs work well for me!
				-- run specific linters, independent of the `linters_by_ft` configuration
				-- require("lint").try_lint("cspell")
			end,
		})
		-- DUNLINT config!

		-- MASON config!
		require("mason").setup()
		require("mason-nvim-dap").setup({
			-- Makes a best effort to setup the various debuggers with
			-- reasonable debug configurations
			automatic_setup = true,
			automatic_installation = true,

			-- You can provide additional configuration to the handlers,
			-- :h mason-nvim-dap very simple setup, essentially only need adapter name
			-- and the rest is fetched smartly with git with magix!
			-- Available Dap Adapters https://github.com/jay-babu/mason-nvim-dap.nvim/blob/main/lua/mason-nvim-dap/mappings/source.lua
			handlers = {},

			-- You'll need to check that you have the required things installed
			-- Update this to ensure that you have the debuggers for the langs you want
			ensure_installed = {
				"delve",
				"debugpy",
				"stylua",
			},
		})
		-- DUNMASON config!

		-- Dap UI setup
		-- :h nvim-dap-ui
		dap.listeners.after.event_initialized["dapui_config"] = dapui.open
		dap.listeners.before.event_terminated["dapui_config"] = dapui.close
		dap.listeners.before.event_exited["dapui_config"] = dapui.close
		-- DUNDap UI setup!

		-- Basic debugging keymaps, feel free to change to your liking!
		vim.keymap.set("n", "<F1>", dap.step_into, { desc = "Debug: Step Into" })
		vim.keymap.set("n", "<F2>", dap.step_over, { desc = "Debug: Step Over" })
		vim.keymap.set("n", "<F3>", dap.step_out, { desc = "Debug: Step Out" })
		vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debug: Start/Continue" })
		vim.keymap.set("n", "<F7>", dapui.toggle, { desc = "Debug: See last session result." })
		vim.keymap.set("n", "<F10>", dap.terminate, { desc = "Debug: Terminate Session." })
		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Debug: Toggle Breakpoint" })
		vim.keymap.set("n", "<leader>dB", function()
			dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
		end, { desc = "Debug: Set Breakpoint" })
		vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "Debug: Repl Open" })
		vim.keymap.set("n", "<leader>dC", dap.clear_breakpoints, { desc = "Debug: Clear All Breakpoints." })
	end,
}
