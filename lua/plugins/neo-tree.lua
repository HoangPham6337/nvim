return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- vim.keymap.set('n', '<C-E>', ':Neotree filesystem reveal left<CR>', {})
		vim.keymap.set('n', '<C-E>', function()
			local is_neotree_open = false
			for _, win in pairs(vim.api.nvim_list_wins()) do
				local buf = vim.api.nvim_win_get_buf(win)
				local buftype = vim.api.nvim_buf_get_option(buf, 'filetype')
				if buftype == 'neo-tree' then
					is_neotree_open = true
					break
				end
			end

			if is_neotree_open then
				vim.cmd("Neotree close")
				else
				vim.cmd("Neotree filesystem reveal right")
			end
			end, {})
	end,
}
