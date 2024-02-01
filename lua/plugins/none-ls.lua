return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua, -- Lua
				null_ls.builtins.formatting.beautysh, -- Bash
				null_ls.builtins.formatting.clang_format.with({ -- C
					filetypes = { "c", "cpp" },
				}),
				null_ls.builtins.formatting.pyink, -- Python
				null_ls.builtins.formatting.google_java_format, -- Java
				null_ls.builtins.diagnostics.codespell,
				null_ls.builtins.diagnostics.cpplint, -- C
				null_ls.builtins.diagnostics.semgrep, -- Java
				null_ls.builtins.diagnostics.checkstyle.with({ -- Java
					extra_args = { "-c", "/google_checks.xml" }, -- or "/sun_checks.xml" or path to self written rules
				}),
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
