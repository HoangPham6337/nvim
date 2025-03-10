return {
	"EdenEast/nightfox.nvim",
	name = "nightfox",
	priority = 1000,
	lazy = false;
	config = function ()
		vim.cmd.colorscheme "carbonfox"
	end
}
-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	flavour = "mocha",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd.colorscheme "catppuccin"
-- 	end
-- }

-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	name = "kanagawa",
-- 	priority = 1000,
-- 	lazy = false,
-- 	config = function()
-- 		require("kanagawa").setup({
-- 			compile = false, -- enable compiling the colorscheme
-- 			undercurl = true, -- enable undercurls
-- 			commentStyle = { italic = true },
-- 			keywordStyle = { italic = true },
-- 			statementStyle = { bold = true },
-- 			transparent = false, -- do not set background color
-- 			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
-- 			terminalColors = true, -- define vim.g.terminal_color_{0,17}
-- 			theme = "dragon", -- Load "wave" theme when 'background' option is not set
-- 			background = { -- map the value of 'background' option to a theme
-- 				dark = "dragon", -- try "dragon" !
-- 				light = "lotus",
-- 			},
-- 		})
-- 		vim.cmd.colorscheme("kanagawa")
-- 	end,
-- }
