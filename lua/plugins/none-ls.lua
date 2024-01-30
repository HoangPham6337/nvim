return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.beautysh,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.google_java_format,
				null_ls.builtins.diagnostics.cpplint,
				null_ls.builtins.diagnostics.trivy,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
