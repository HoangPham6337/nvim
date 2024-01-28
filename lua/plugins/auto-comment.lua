return {
	"terrortylor/nvim-comment",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		require("nvim_comment").setup({
			create_mappings = false
		})
	end,
}
