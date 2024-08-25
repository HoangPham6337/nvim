return {
	"folke/which-key.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		require("which-key").setup({
			notify = false
		})
		local wk = require("which-key")
		wk.register({
			["<C-E>"] = { name = "NeoTree", _ = "which_key_ignore" },
			["<C-F>"] = { name = "Search file", _ = "which_key_ignore" },
			["<C-H>"] = { name = "Search current file", _ = "which_key_ignore" },
			["g"] = {
				name = "Word related action",
				d = { name = "Go to definition" },
			},
			["<leader>"] = {
				c = {
					name = "Code",
					a = { name = "Action", _ = "which_key_ignore" },
					d = { name = "Diagnostic", _ = "which_key_ignore" }
				},
				f = {
					name = "Fuzzy search",
					g = { name = "Live Grep", _ = "which_key_ignore" },
					r = { name = "Recent File", _= "which_key_ignore"},
				},
				g = {
					name = "File format",
					f = { name = "File", _ = "which_key_ignore" },
					d = { name = "Go to definition", _ = "which_key_ignore" }
				},
			},
		})
	end,
}
