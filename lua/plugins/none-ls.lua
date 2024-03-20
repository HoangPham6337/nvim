return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua, -- Lua
				null_ls.builtins.formatting.shfmt, -- Bash
				null_ls.builtins.formatting.clang_format.with({ -- C
					filetypes = { "c", "cpp" },
				}),
				null_ls.builtins.formatting.pyink,  -- Python
				null_ls.builtins.formatting.google_java_format, -- Java
				null_ls.builtins.diagnostics.codespell,
				-- null_ls.builtins.diagnostics.clangd, -- C
				null_ls.builtins.diagnostics.textlint,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
