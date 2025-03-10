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
			require("mason-lspconfig").setup({
				-- ensure_installed = {"checkstyle", "clang-format", "clangd", "codespell", "cpplint", "google-java-format", "lua-language-server", "marksman", "mypy", "pyink", "pylint", "python-lsp-server", "shfmt", "stylua", "textlint"}
				ensure_installed = { "clangd", "pylsp", "jdtls", "lua_ls", "eslint", "ts_ls" },
			})
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

			vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
				pattern = "docker-compose.yml",
				callback = function()
					vim.bo.filetype = "yaml.docker-compose"
				end,
			})

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
				jdtls = {
					cmd = {
						"jdtls",
						"-configuration",
						"/home/user/.cache/jdtls/config",
						"-data",
						"/home/user/.cache/jdtls/workspace",
					},
					filetypes = { "java" },
				},
				marksman = {
					cmd = { "marksman", "server" },
					filetypes = { "markdown", "markdown.mdx", "md" },
				},
				pylsp = {
					cmd = { "pylsp" },
					filetypes = { "python" },
				},
				ruff = {
					init_options = {
						settings = {
							logLevel = 'debug',
						},
					},
					-- cmd = { "ruff", "server" },
					-- filetypes = { "python" },
					-- single_file_support = true,
				},
				ts_ls = {
					cmd = { "typescript-language-server", "--stdio" },
					filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
					init_options = { hostInfo = "neovim" },
					single_file_support = true,
				},
				eslint = {
					cmd = { "vscode-eslint-language-server", "--stdio" },
					filetypes = { "javascript", "javascriptreact", "javascript.jsx", "vue", "svelte", "astro" },
					settings = {
						codeAction = {
							disableRuleComment = {
								enable = true,
								location = "separateLine",
							},
							showDocumentation = {
								enable = true,
							},
						},
						codeActionOnSave = {
							enable = false,
							mode = "all",
						},
						experimental = {
							useFlatConfig = false,
						},
						format = true,
						nodePath = "",
						onIgnoredFiles = "off",
						problems = {
							shortenToSingleLine = false,
						},
						quiet = false,
						rulesCustomizations = {},
						run = "onType",
						useESLintClass = false,
						validate = "on",
						workingDirectory = {
							mode = "location",
						},
					},
				},
				dockerls = {
					cmd = { "docker-langserver", "--stdio" },
					filetypes = { "Dockerfile", "dockerfile" },
					root_dir = require("lspconfig.util").root_pattern("Dockerfile"),
				},
				docker_compose_language_service = {
					cmd = { "docker-compose-langserver", "--stdio" },
					filetypes = { "yaml.docker-compose" },
					root_dir = require("lspconfig.util").root_pattern("docker-compose.yml"),
					single_file_support = true,
				},
				harper_ls = {
					cmd = { "harper-ls", "--stdio" },
					filetypes = { "toml" },
					single_file_support = true,
					settings = {
						linters = {
							spell_check = true,
							spelled_numbers = false,
							an_a = true,
							sentence_capitalization = true,
							unclosed_quotes = true,
							wrong_quotes = false,
							long_sentences = true,
							repeated_words = true,
							spaces = true,
							matcher = true,
							correct_number_suffix = true,
							number_suffix_capitalization = true,
							multiple_sequential_pronouns = true,
							linking_verbs = false,
							avoid_curses = true,
							terminating_conjunctions = true,
						},
					},
				},
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
