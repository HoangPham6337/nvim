return {
	"terrortylor/nvim-comment",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		require("nvim_comment").setup({
			marker_padding = true,
			comment_empty = true,
			mappings = false
		})
	end,
}
