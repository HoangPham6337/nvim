return {
	"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
	config = function()
		require("lsp_lines").setup()
		vim.diagnostic.config({
			virtual_text = true,
			virtual_lines = false,
		})
		vim.keymap.set("n", "<leader>l", require("lsp_lines").toggle)
		vim.keymap.set("v", "<leader>l", require("lsp_lines").toggle)
	end,
}
