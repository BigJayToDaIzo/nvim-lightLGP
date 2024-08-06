return {
	{
		-- COMPLETION!  It makes IDES feel nice, no matter the lang
		-- TODO: fill out with better notes, this is a LOT
		-- Meet the dopest in the game at it,
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			-- TODO: This may need abstraction
			"neovim/nvim-lspconfig",
			-- Meet also the dopest in the game at snippetnannigans
			{
				"L3MON4d3/LuaSnip",
				build = "make install_jsregexp",
				dependencies = {
					"saadparwaiz1/cmp_luasnip",
				},
				-- TODO: config function plz
				config = function()
					require("cmp").setup({
						snippet = {
							expand = function(args)
								require("luasnip").lsp_expand(args.body)
							end,
						},
						sources = {
							-- that 'option' is the default for syntax demonstration purposes
							{ name = "luasnip", option = { show_autosnippets = true } },
							-- TODO: Go or python or dotnet next!
						},
					})
					-- Post config func pics up here
				end,
			},
		},
		-- TODO: Setup begins with configuration
		config = function()
			local cmp = require("cmp")
			cmp.setup({
				-- REQUIRED - MUST specify snippet engine
				snippet = {
					expand = function(args)
						-- vim.fn["vsnip#anonymous"](args.body) -- For vsnip gangers
						require("luasnip").lsp_expand(args.body) -- For luaship gangers
						-- require'snippy'.expand_snippet(args.body) -- snippy gangers
						-- vim.snippet.expand(args.body) -- On their giant shoulders we stand
					end,
				},
				window = {
					-- completion = cmp.config.window.bordered(),
					-- documentation = cmp.config.window.bordered(),
				},
				-- Keybind/keymap trackin' time!
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-y>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
					["<Tab>"] = vim.schedule_wrap(function(fallback)
						if cmp.visible() and has_words_before() then
							cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
						else
							fallback()
						end
					end),
					["<C-l>"] = cmp.mapping(function()
						if luasnip.expand_or_locally_jumpable() then
							luasnip.expand_or_jump()
						end
					end, { "i", "s" }),
					["<C-h>"] = cmp.mapping(function()
						if luasnip.locally_jumpable(-1) then
							luasnip.jump(-1)
						end
					end, { "i", "s" }),
				}),
				-- Source trackin' time!
				-- Where moar completion sources?
				-- WARN: Rabbit hole 󱩢🕳
				-- https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources
				-- TODO: Pick one or two at a time and link them in!
				-- TODO: Probably Copilot or Codeium
				sources = cmp.config.sources({
					{ name = "nvim_lsp", group_index = 2 },
					{ name = "luasnip" },
					{ name = "path", group_index = 2 },
					-- { name = 'vsniip' }, -- for that gang
					-- AI helper bro.  Careful things can start getting hearvy down this...
					-- :WARN 󱩢🕳
					-- { name = 'copilot', group_index 1 },
					-- and so on
				}, {
					-- WARN: Insert rabbit hole here 🕳󱩢
					{ name = "buffer" },
				}),

				-- TODO: Integrate with git
				-- Want to get get chummy with dagit?  PROBABLY right?
				-- don't forget to add the below plugin to dependencies so it loads when completions does
				-- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
				-- Set configuration for specific filetype.
				--[[ cmp.setup.filetype('gitcommit', {
            sources = cmp.config.sources({
              { name = 'git' },
            }, {
              { name = 'buffer' },
            })
           })
         require("cmp_git").setup() ]]
				--

				-- TODO Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
				-- cmp.setup.cmdline({ '/', '?' }, {
				--   mapping = cmp.mapping.preset.cmdline(),
				--   sources = {
				--     { name = 'buffer' }
				--   }
				-- })
				--

				-- TODO: Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
				-- cmp.setup.cmdline(':', {
				--   mapping = cmp.mapping.preset.cmdline(),
				--   sources = cmp.config.sources({
				--     { name = 'path' }
				--   }, {
				--     { name = 'cmdline' }
				--   }),
				--   matching = { disallow_symbol_nonprefix_matching = false }
				-- })

				-- TODO: Set up lspconfig.
				-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
				-- -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
				-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
				--   capabilities = capabilities
				-- }
			})
		end,
		--Post config shenannigans here if necessary
	},
	-- Another completion plugin here?
	-- {},
}
