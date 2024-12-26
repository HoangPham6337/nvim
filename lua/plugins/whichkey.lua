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
			notify = false,
		})
		local wk = require("which-key")
		wk.add({
			{ "<C-E>", group = "NeoTree" },
			{ "<C-E>_", hidden = true },
			{ "<C-F>", group = "Search file" },
			{ "<C-F>_", hidden = true },
			{ "<C-H>", group = "Search current file" },
			{ "<C-H>_", hidden = true },
			{ "<leader>c", group = "Code" },
			{ "<leader>ca", group = "Action" },
			{ "<leader>ca_", hidden = true },
			{ "<leader>cd", group = "Diagnostic" },
			{ "<leader>cd_", hidden = true },
			{ "<leader>f", group = "Fuzzy search" },
			{ "<leader>fg", group = "Live Grep" },
			{ "<leader>fg_", hidden = true },
			{ "<leader>fr", group = "Recent File" },
			{ "<leader>fr_", hidden = true },
			{ "<leader>g", group = "File format" },
			{ "<leader>gd", group = "Go to definition" },
			{ "<leader>gd_", hidden = true },
			{ "<leader>gf", group = "File" },
			{ "<leader>gf_", hidden = true },
			{ "g", group = "Word related action" },
			{ "gd", group = "Go to definition" },
		})
	end,
}
