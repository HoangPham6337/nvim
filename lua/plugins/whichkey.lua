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
			plugins = {
				marks = true, -- show a list of marks on ' and `
				registers = true, -- show a list of registers on "
				spelling = {
					enabled = true, -- enable suggestions for z=
					suggestions = 20, -- number of suggestions to show
				},
			},
			replace = {
				["<space>"] = "SPC",
				["<cr>"] = "RET",
				["<tab>"] = "TAB",
			},
			show_help = true,
			tiggers = "auto",
			notify = false,
		})
		local wk = require("which-key")
		wk.add({
			{ "<F2>", desc = "Rename function/variable" },
			{ "K", desc = "Open hover documentation" },
			{ "yy", desc = "Copy to clipboard" },
			{ "yy", hidden = true },
			{ "-", desc = "Open parent directory (Oil)"},

			{ "<C-N>", desc = "New window vertical" },
			{ "<C-N>_", hidden = true },
			{ "<C-L>", desc = "New window horizontal" },
			{ "<C-L>_", hidden = true },
			{ "<C-M>", desc = "Close window" },
			{ "<C-M>_", hidden = true },
			{ "<C-A", desc = "Select all" },
			{ "<C-A>_", hidden = true },
			{ "<C-E>", desc = "Open/Close NeoTree" },
			{ "<C-E>_", hidden = true },
			{ "<C-F>", desc = "Search file" },
			{ "<C-F>_", hidden = true },
			{ "<C-H>", desc = "Search current file" },
			{ "<C-H>_", hidden = true },
			{ "<C-S>", desc = "Save file" },
			{ "<C-S>_", hidden = true },

			{ "<C-_>", desc = "Toggle comment" },
			{ "<C-_>_", hidden = true },
			{ "<C-Left>", desc = "Decrease window size" },
			{ "<C-Left>_", hidden = true },
			{ "<C-Right>", desc = "Increase window size" },
			{ "<C-Right>_", hidden = true },

			{ "<S-Tab>", desc = "Cycle between window" },
			{ "<S-Tab>_", hidden = true },

			{ "<leader>l", desc = "Toggle lsp_lines" },

			{ "<leader>c", group = "Code" },
			{ "<leader>ca", desc = "Code action" },
			{ "<leader>ca_", hidden = true },
			{ "<leader>cd", desc = "Show diagnostic" },
			{ "<leader>cd_", hidden = true },

			{ "<leader>f", group = "Fuzzy search" },
			{ "<leader>fg", desc = "Search codebase line-by-line" },
			{ "<leader>fg_", hidden = true },
			{ "<leader>fr", desc = "Search recent files" },
			{ "<leader>fr_", hidden = true },

			{ "<leader>g", group = "File function" },
			{ "<leader>gd", desc = "Go to definition" },
			{ "<leader>gd_", hidden = true },
			{ "<leader>gf", desc = "Format File" },
			{ "<leader>gf_", hidden = true },
		})
	end,
}
