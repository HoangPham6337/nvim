return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({})
		end,
		opts = {
			auto_install = true,
		},
	},
	{
		"folke/neodev.nvim",
		config = function()
			require("neodev").setup({
				library = {
					enable = true,
					plugins = true,
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local on_attach = function(_, bufnr)
				local bufopts = { noremap = true, silent = true, buffer = bufnr }
				vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
				vim.keymap.set("n", "cd", function()
					vim.diagnostic.goto_next({
						float = { border = "single" },
					})
				end, bufopts)
				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, bufopts)
			end

			local servers = {
				lua_ls = {
					settings = {
						Lua = {
							telemetry = { enable = false },
							diagnostics = { disable = { "missing-fields" } },
						},
					},
				},
				clangd = {},
				jdtls = {},
				marksman = {},
				pylsp = {},
			}

			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
			local lspconfig = require("lspconfig")

			for server, config in pairs(servers) do
				config.on_attach = on_attach
				config.capabilities = capabilities
				lspconfig[server].setup(config)
			end

		end,
	},
}
