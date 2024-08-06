return {
	-- Had to dig into gh issues to find all this.  Basic setup is much simpler
	-- but was broken for me.
	-- https://github.com/iamcco/markdown-preview.nvim/issues/690
	-- Install markdown preview, use npx if available.
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function(plugin)
		if vim.fn.executable("npx") then
			vim.cmd("!cd " .. plugin.dir .. " && cd app && npx --yes yarn install")
		else
			vim.cmd([[Lazy load markdown-preview.nvim]])
			vim.fn["mkdp#util#install"]()
		end
	end,
	init = function()
		if vim.fn.executable("npx") then
			vim.g.mkdp_filetypes = { "markdown" }
		end
	end,
}
