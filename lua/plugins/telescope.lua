return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-f>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<C-H>", builtin.current_buffer_fuzzy_find, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			local actions = require("telescope.actions")
			local custom_mapping = {
				i = {
					["<C-j>"] = actions.move_selection_next,
					["<C-k>"] = actions.move_selection_previous,
				},
				n = {
					["<C-j>"] = actions.move_selection_next,
					["<C-k>"] = actions.move_selection_previous,
				},
			}

			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				pickers = {
					find_files = {
						mappings = custom_mapping,
					},
					live_grep = {
						mappings = custom_mapping,
					},
					current_buffer_fuzzy_find = {
						mappings = custom_mapping,
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
