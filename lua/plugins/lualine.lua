return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local function count_lines()
			return "%L lines"
		end
		local function count_words()
			local words = vim.fn.wordcount().words
			return tostring(words) .. " words"
		end
		require("lualine").setup({
			options = {
				theme = "nord",
			},
			sections = {
				lualine_x = { count_lines, count_words, "encoding",  "filetype" },
			},
		})
	end,
}
