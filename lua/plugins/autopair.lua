return {
	-- NOTE I think many can agree a closing pair of
	-- [({""})] is very nice
	-- :h nvim-autopairs
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	-- opts is like doing:
	-- require('nvim-autopairs').setup({
	-- this is where you would set options
	-- })
	opts = {},
}
