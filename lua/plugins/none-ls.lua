return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua, -- Lua
				null_ls.builtins.formatting.shfmt,  -- Bash
				null_ls.builtins.formatting.clang_format.with({ -- C
					filetypes = { "c", "cpp" },
				}),
				-- null_ls.builtins.formatting.pyink, -- Python
				-- null_ls.builtins.diagnostics.mypy.with({
				-- 	command = { "mypy", "--check-untyped-defs" },
				-- }),
				null_ls.builtins.formatting.google_java_format, -- Java
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.prettierd
			},
		})
	end,
}
